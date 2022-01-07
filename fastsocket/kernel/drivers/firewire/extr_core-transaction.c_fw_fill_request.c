
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct fw_packet {int* header; int header_length; size_t payload_length; int speed; int generation; scalar_t__ payload_bus; scalar_t__ ack; void* payload; } ;


 int HEADER_DATA_LENGTH (size_t) ;
 int HEADER_DESTINATION (int) ;
 int HEADER_EXTENDED_TCODE (int) ;
 int HEADER_OFFSET_HIGH (unsigned long long) ;
 int HEADER_RETRY (int ) ;
 int HEADER_SOURCE (int) ;
 int HEADER_TCODE (int) ;
 int HEADER_TLABEL (int) ;
 int RETRY_X ;



 int TCODE_STREAM_DATA ;



__attribute__((used)) static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
  int destination_id, int source_id, int generation, int speed,
  unsigned long long offset, void *payload, size_t length)
{
 int ext_tcode;

 if (tcode == TCODE_STREAM_DATA) {
  packet->header[0] =
   HEADER_DATA_LENGTH(length) |
   destination_id |
   HEADER_TCODE(TCODE_STREAM_DATA);
  packet->header_length = 4;
  packet->payload = payload;
  packet->payload_length = length;

  goto common;
 }

 if (tcode > 0x10) {
  ext_tcode = tcode & ~0x10;
  tcode = 132;
 } else
  ext_tcode = 0;

 packet->header[0] =
  HEADER_RETRY(RETRY_X) |
  HEADER_TLABEL(tlabel) |
  HEADER_TCODE(tcode) |
  HEADER_DESTINATION(destination_id);
 packet->header[1] =
  HEADER_OFFSET_HIGH(offset >> 32) | HEADER_SOURCE(source_id);
 packet->header[2] =
  offset;

 switch (tcode) {
 case 128:
  packet->header[3] = *(u32 *)payload;
  packet->header_length = 16;
  packet->payload_length = 0;
  break;

 case 132:
 case 129:
  packet->header[3] =
   HEADER_DATA_LENGTH(length) |
   HEADER_EXTENDED_TCODE(ext_tcode);
  packet->header_length = 16;
  packet->payload = payload;
  packet->payload_length = length;
  break;

 case 130:
  packet->header_length = 12;
  packet->payload_length = 0;
  break;

 case 131:
  packet->header[3] =
   HEADER_DATA_LENGTH(length) |
   HEADER_EXTENDED_TCODE(ext_tcode);
  packet->header_length = 16;
  packet->payload_length = 0;
  break;
 }
 common:
 packet->speed = speed;
 packet->generation = generation;
 packet->ack = 0;
 packet->payload_bus = 0;
}
