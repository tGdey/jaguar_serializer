import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:mongo_dart/mongo_dart.dart';
import '../../_common/mongo_serializer/import.dart';
import 'book.dart';

export 'book.dart' show Book;

part 'book_mongo.jser.dart';

@GenSerializer(fields: const {
  'id': const EnDecode<String>(alias: '_id', processor: const MongoId()),
  'name': const EnDecode<String>(alias: 'N'),
  'viewSerializer': ignore,
})
class BookMongoSerializer extends Serializer<Book> with _$BookMongoSerializer {}
