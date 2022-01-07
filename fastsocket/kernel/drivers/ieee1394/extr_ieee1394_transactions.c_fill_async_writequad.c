
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {int header_size; int expect_response; scalar_t__ data_size; int * header; } ;
typedef int quadlet_t ;


 int PREP_ASYNC_HEAD_ADDRESS (int ) ;
 int TCODE_WRITEQ ;

__attribute__((used)) static void fill_async_writequad(struct hpsb_packet *packet, u64 addr,
     quadlet_t data)
{
 PREP_ASYNC_HEAD_ADDRESS(TCODE_WRITEQ);
 packet->header[3] = data;
 packet->header_size = 16;
 packet->data_size = 0;
 packet->expect_response = 1;
}
