
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hpsb_packet {int* data; int node_id; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef int octlet_t ;
typedef int nodeid_t ;




 int fill_async_lock (struct hpsb_packet*,int ,int,int) ;
 struct hpsb_packet* hpsb_alloc_packet (int) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_get_tlabel (struct hpsb_packet*) ;

struct hpsb_packet *hpsb_make_lock64packet(struct hpsb_host *host,
        nodeid_t node, u64 addr, int extcode,
        octlet_t * data, octlet_t arg)
{
 struct hpsb_packet *p;
 u32 length;

 p = hpsb_alloc_packet(16);
 if (!p)
  return ((void*)0);

 p->host = host;
 p->node_id = node;
 if (hpsb_get_tlabel(p)) {
  hpsb_free_packet(p);
  return ((void*)0);
 }

 switch (extcode) {
 case 129:
 case 128:
  length = 8;
  if (data) {
   p->data[0] = *data >> 32;
   p->data[1] = *data & 0xffffffff;
  }
  break;
 default:
  length = 16;
  if (data) {
   p->data[0] = arg >> 32;
   p->data[1] = arg & 0xffffffff;
   p->data[2] = *data >> 32;
   p->data[3] = *data & 0xffffffff;
  }
  break;
 }
 fill_async_lock(p, addr, extcode, length);

 return p;
}
