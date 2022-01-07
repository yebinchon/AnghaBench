
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {scalar_t__ tcode; } ;


 scalar_t__ TCODE_STREAM_DATA ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 int hpsb_free_tlabel (struct hpsb_packet*) ;

__attribute__((used)) static void ether1394_free_packet(struct hpsb_packet *packet)
{
 if (packet->tcode != TCODE_STREAM_DATA)
  hpsb_free_tlabel(packet);
 hpsb_free_packet(packet);
}
