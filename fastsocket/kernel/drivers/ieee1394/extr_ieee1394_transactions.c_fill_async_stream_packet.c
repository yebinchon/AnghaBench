
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int* header; int header_size; int data_size; int tcode; int type; } ;


 int TCODE_ISO_DATA ;
 int TCODE_STREAM_DATA ;
 int hpsb_async ;

__attribute__((used)) static void fill_async_stream_packet(struct hpsb_packet *packet, int length,
         int channel, int tag, int sync)
{
 packet->header[0] = (length << 16) | (tag << 14) | (channel << 8)
     | (TCODE_STREAM_DATA << 4) | sync;

 packet->header_size = 4;
 packet->data_size = length;
 packet->type = hpsb_async;
 packet->tcode = TCODE_ISO_DATA;
}
