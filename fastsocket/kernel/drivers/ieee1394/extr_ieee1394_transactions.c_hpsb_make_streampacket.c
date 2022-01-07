
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hpsb_packet {int node_id; scalar_t__* data; int speed_code; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;


 int ALL_NODES ;
 int IEEE1394_SPEED_100 ;
 int LOCAL_BUS ;
 int fill_async_stream_packet (struct hpsb_packet*,int,int,int,int) ;
 struct hpsb_packet* hpsb_alloc_packet (int) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_get_tlabel (struct hpsb_packet*) ;
 int memcpy (scalar_t__*,int *,int) ;

struct hpsb_packet *hpsb_make_streampacket(struct hpsb_host *host, u8 * buffer,
        int length, int channel, int tag,
        int sync)
{
 struct hpsb_packet *packet;

 if (length == 0)
  return ((void*)0);

 packet = hpsb_alloc_packet(length);
 if (!packet)
  return ((void*)0);

 if (length % 4) {
  packet->data[length >> 2] = 0;
 }
 packet->host = host;



 packet->speed_code = IEEE1394_SPEED_100;


 packet->node_id = LOCAL_BUS | ALL_NODES;

 if (hpsb_get_tlabel(packet)) {
  hpsb_free_packet(packet);
  return ((void*)0);
 }

 fill_async_stream_packet(packet, length, channel, tag, sync);
 if (buffer)
  memcpy(packet->data, buffer, length);

 return packet;
}
