
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int in_bus_reset; } ;
typedef int quadlet_t ;


 int HPSB_DEBUG (char*,...) ;
 int dump_packet (char*,int*,size_t,int) ;
 int handle_incoming_packet (struct hpsb_host*,int,int*,size_t,int) ;
 int handle_packet_response (struct hpsb_host*,int,int*,size_t) ;
 scalar_t__ unlikely (int ) ;

void hpsb_packet_received(struct hpsb_host *host, quadlet_t *data, size_t size,
     int write_acked)
{
 int tcode;

 if (unlikely(host->in_bus_reset)) {
  HPSB_DEBUG("received packet during reset; ignoring");
  return;
 }

 dump_packet("received packet", data, size, -1);

 tcode = (data[0] >> 4) & 0xf;

 switch (tcode) {
 case 128:
 case 131:
 case 133:
 case 135:
  handle_packet_response(host, tcode, data, size);
  break;

 case 129:
 case 130:
 case 132:
 case 134:
 case 136:
  handle_incoming_packet(host, tcode, data, size, write_acked);
  break;

 case 137:

  break;

 default:
  HPSB_DEBUG("received packet with bogus transaction code %d",
      tcode);
  break;
 }
}
