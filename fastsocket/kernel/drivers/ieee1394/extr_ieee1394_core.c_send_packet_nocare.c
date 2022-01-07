
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int dummy; } ;


 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_send_packet (struct hpsb_packet*) ;

__attribute__((used)) static void send_packet_nocare(struct hpsb_packet *packet)
{
 if (hpsb_send_packet(packet) < 0) {
  hpsb_free_packet(packet);
 }
}
