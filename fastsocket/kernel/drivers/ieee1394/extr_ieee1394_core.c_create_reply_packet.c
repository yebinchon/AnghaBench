
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int node_id; int tlabel; int no_waiter; scalar_t__* data; int generation; struct hpsb_host* host; int state; int type; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;


 int HPSB_ERR (char*) ;
 int get_hpsb_generation (struct hpsb_host*) ;
 struct hpsb_packet* hpsb_alloc_packet (size_t) ;
 int hpsb_async ;
 int hpsb_unused ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct hpsb_packet *create_reply_packet(struct hpsb_host *host,
            quadlet_t *data, size_t dsize)
{
 struct hpsb_packet *p;

 p = hpsb_alloc_packet(dsize);
 if (unlikely(p == ((void*)0))) {

  HPSB_ERR("out of memory, cannot send response packet");
  return ((void*)0);
 }

 p->type = hpsb_async;
 p->state = hpsb_unused;
 p->host = host;
 p->node_id = data[1] >> 16;
 p->tlabel = (data[0] >> 10) & 0x3f;
 p->no_waiter = 1;

 p->generation = get_hpsb_generation(host);

 if (dsize % 4)
  p->data[dsize / 4] = 0;

 return p;
}
