
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int header_size; scalar_t__ data_size; } ;


 int PREP_ASYNC_HEAD_RCODE (int ) ;
 int TCODE_WRITE_RESPONSE ;

__attribute__((used)) static void fill_async_write_resp(struct hpsb_packet *packet, int rcode)
{
 PREP_ASYNC_HEAD_RCODE(TCODE_WRITE_RESPONSE);
 packet->header_size = 12;
 packet->data_size = 0;
}
