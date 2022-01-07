
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {scalar_t__* data; int node_id; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;
typedef int nodeid_t ;


 int fill_async_writeblock (struct hpsb_packet*,int ,size_t) ;
 int fill_async_writequad (struct hpsb_packet*,int ,int ) ;
 struct hpsb_packet* hpsb_alloc_packet (size_t) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_get_tlabel (struct hpsb_packet*) ;
 int memcpy (scalar_t__*,int *,size_t) ;

struct hpsb_packet *hpsb_make_writepacket(struct hpsb_host *host, nodeid_t node,
       u64 addr, quadlet_t * buffer,
       size_t length)
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
 packet->node_id = node;

 if (hpsb_get_tlabel(packet)) {
  hpsb_free_packet(packet);
  return ((void*)0);
 }

 if (length == 4) {
  fill_async_writequad(packet, addr, buffer ? *buffer : 0);
 } else {
  fill_async_writeblock(packet, addr, length);
  if (buffer)
   memcpy(packet->data, buffer, length);
 }

 return packet;
}
