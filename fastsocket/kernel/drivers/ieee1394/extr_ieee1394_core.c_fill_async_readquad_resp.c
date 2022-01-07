
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int header_size; scalar_t__ data_size; int * header; } ;
typedef int quadlet_t ;


 int PREP_ASYNC_HEAD_RCODE (int ) ;
 int TCODE_READQ_RESPONSE ;

__attribute__((used)) static void fill_async_readquad_resp(struct hpsb_packet *packet, int rcode,
         quadlet_t data)
{
 PREP_ASYNC_HEAD_RCODE(TCODE_READQ_RESPONSE);
 packet->header[3] = data;
 packet->header_size = 16;
 packet->data_size = 0;
}
