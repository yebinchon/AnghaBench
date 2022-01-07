
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int* header; int header_size; int data_size; } ;


 int PREP_ASYNC_HEAD_RCODE (int ) ;
 int RCODE_COMPLETE ;
 int TCODE_READB_RESPONSE ;

__attribute__((used)) static void fill_async_readblock_resp(struct hpsb_packet *packet, int rcode,
          int length)
{
 if (rcode != RCODE_COMPLETE)
  length = 0;

 PREP_ASYNC_HEAD_RCODE(TCODE_READB_RESPONSE);
 packet->header[3] = length << 16;
 packet->header_size = 16;
 packet->data_size = length + (length % 4 ? 4 - (length % 4) : 0);
}
