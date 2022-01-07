
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {int* header; int header_size; int expect_response; int data_size; } ;


 int PREP_ASYNC_HEAD_ADDRESS (int ) ;
 int TCODE_WRITEB ;

__attribute__((used)) static void fill_async_writeblock(struct hpsb_packet *packet, u64 addr,
      int length)
{
 PREP_ASYNC_HEAD_ADDRESS(TCODE_WRITEB);
 packet->header[3] = length << 16;
 packet->header_size = 16;
 packet->expect_response = 1;
 packet->data_size = length + (length % 4 ? 4 - (length % 4) : 0);
}
