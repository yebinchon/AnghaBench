
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {int* header; int header_size; int data_size; int expect_response; } ;


 int PREP_ASYNC_HEAD_ADDRESS (int ) ;
 int TCODE_LOCK_REQUEST ;

__attribute__((used)) static void fill_async_lock(struct hpsb_packet *packet, u64 addr, int extcode,
       int length)
{
 PREP_ASYNC_HEAD_ADDRESS(TCODE_LOCK_REQUEST);
 packet->header[3] = (length << 16) | extcode;
 packet->header_size = 16;
 packet->data_size = length;
 packet->expect_response = 1;
}
