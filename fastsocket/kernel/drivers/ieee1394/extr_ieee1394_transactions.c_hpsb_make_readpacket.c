
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_packet {int node_id; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef int nodeid_t ;


 int fill_async_readblock (struct hpsb_packet*,int ,size_t) ;
 int fill_async_readquad (struct hpsb_packet*,int ) ;
 struct hpsb_packet* hpsb_alloc_packet (size_t) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_get_tlabel (struct hpsb_packet*) ;

struct hpsb_packet *hpsb_make_readpacket(struct hpsb_host *host, nodeid_t node,
      u64 addr, size_t length)
{
 struct hpsb_packet *packet;

 if (length == 0)
  return ((void*)0);

 packet = hpsb_alloc_packet(length);
 if (!packet)
  return ((void*)0);

 packet->host = host;
 packet->node_id = node;

 if (hpsb_get_tlabel(packet)) {
  hpsb_free_packet(packet);
  return ((void*)0);
 }

 if (length == 4)
  fill_async_readquad(packet, addr);
 else
  fill_async_readblock(packet, addr, length);

 return packet;
}
