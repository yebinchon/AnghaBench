
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_fl {size_t cidx; size_t size; int avail; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {int dma_addr; int page; } ;
struct pkt_gl {TYPE_1__* frags; } ;
struct TYPE_2__ {int page; } ;


 int RX_UNMAPPED_BUF ;

__attribute__((used)) static void restore_rx_bufs(const struct pkt_gl *si, struct sge_fl *q,
       int frags)
{
 struct rx_sw_desc *d;

 while (frags--) {
  if (q->cidx == 0)
   q->cidx = q->size - 1;
  else
   q->cidx--;
  d = &q->sdesc[q->cidx];
  d->page = si->frags[frags].page;
  d->dma_addr |= RX_UNMAPPED_BUF;
  q->avail++;
 }
}
