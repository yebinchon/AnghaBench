
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int next_linked_ch; int prev_linked_ch; } ;


 int CLNK_CTRL (int) ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

__attribute__((used)) static void create_dma_lch_chain(int lch_head, int lch_queue)
{
 u32 l;


 if (dma_chan[lch_head].next_linked_ch == -1) {
  dma_chan[lch_head].next_linked_ch = lch_queue;
  dma_chan[lch_head].prev_linked_ch = lch_queue;
  dma_chan[lch_queue].next_linked_ch = lch_head;
  dma_chan[lch_queue].prev_linked_ch = lch_head;
 }


 else {
  dma_chan[lch_queue].next_linked_ch =
     dma_chan[lch_head].next_linked_ch;
  dma_chan[lch_queue].prev_linked_ch = lch_head;
  dma_chan[lch_head].next_linked_ch = lch_queue;
  dma_chan[dma_chan[lch_queue].next_linked_ch].prev_linked_ch =
     lch_queue;
 }

 l = dma_read(CLNK_CTRL(lch_head));
 l &= ~(0x1f);
 l |= lch_queue;
 dma_write(l, CLNK_CTRL(lch_head));

 l = dma_read(CLNK_CTRL(lch_queue));
 l &= ~(0x1f);
 l |= (dma_chan[lch_queue].next_linked_ch);
 dma_write(l, CLNK_CTRL(lch_queue));
}
