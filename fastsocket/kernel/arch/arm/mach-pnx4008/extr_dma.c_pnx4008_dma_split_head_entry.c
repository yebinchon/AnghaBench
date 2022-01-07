
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnx4008_dma_ll {unsigned long next_dma; int ch_ctrl; struct pnx4008_dma_ll* next; scalar_t__ dest_addr; scalar_t__ src_addr; } ;
struct pnx4008_dma_config {int ch_ctrl; int is_ll; unsigned long ll_dma; scalar_t__ dest_addr; scalar_t__ src_addr; struct pnx4008_dma_ll* ll; } ;
struct pnx4008_dma_ch_ctrl {int tr_size; int swidth; int dwidth; scalar_t__ di; scalar_t__ si; } ;





 void* pnx4008_alloc_ll_entry (unsigned long*) ;

void pnx4008_dma_split_head_entry(struct pnx4008_dma_config * config,
      struct pnx4008_dma_ch_ctrl * ctrl)
{
 int new_len = ctrl->tr_size, num_entries = 0;
 int old_len = new_len;
 int src_width, dest_width, count = 1;

 switch (ctrl->swidth) {
 case 130:
  src_width = 1;
  break;
 case 129:
  src_width = 2;
  break;
 case 128:
  src_width = 4;
  break;
 default:
  return;
 }

 switch (ctrl->dwidth) {
 case 130:
  dest_width = 1;
  break;
 case 129:
  dest_width = 2;
  break;
 case 128:
  dest_width = 4;
  break;
 default:
  return;
 }

 while (new_len > 0x7FF) {
  num_entries++;
  new_len = (ctrl->tr_size + num_entries) / (num_entries + 1);
 }
 if (num_entries != 0) {
  struct pnx4008_dma_ll *ll = ((void*)0);
  config->ch_ctrl &= ~0x7ff;
  config->ch_ctrl |= new_len;
  if (!config->is_ll) {
   config->is_ll = 1;
   while (num_entries) {
    if (!ll) {
     config->ll =
         pnx4008_alloc_ll_entry(&config->
           ll_dma);
     ll = config->ll;
    } else {
     ll->next =
         pnx4008_alloc_ll_entry(&ll->
           next_dma);
     ll = ll->next;
    }

    if (ctrl->si)
     ll->src_addr =
         config->src_addr +
         src_width * new_len * count;
    else
     ll->src_addr = config->src_addr;
    if (ctrl->di)
     ll->dest_addr =
         config->dest_addr +
         dest_width * new_len * count;
    else
     ll->dest_addr = config->dest_addr;
    ll->ch_ctrl = config->ch_ctrl & 0x7fffffff;
    ll->next_dma = 0;
    ll->next = ((void*)0);
    num_entries--;
    count++;
   }
  } else {
   struct pnx4008_dma_ll *ll_old = config->ll;
   unsigned long ll_dma_old = config->ll_dma;
   while (num_entries) {
    if (!ll) {
     config->ll =
         pnx4008_alloc_ll_entry(&config->
           ll_dma);
     ll = config->ll;
    } else {
     ll->next =
         pnx4008_alloc_ll_entry(&ll->
           next_dma);
     ll = ll->next;
    }

    if (ctrl->si)
     ll->src_addr =
         config->src_addr +
         src_width * new_len * count;
    else
     ll->src_addr = config->src_addr;
    if (ctrl->di)
     ll->dest_addr =
         config->dest_addr +
         dest_width * new_len * count;
    else
     ll->dest_addr = config->dest_addr;
    ll->ch_ctrl = config->ch_ctrl & 0x7fffffff;
    ll->next_dma = 0;
    ll->next = ((void*)0);
    num_entries--;
    count++;
   }
   ll->next_dma = ll_dma_old;
   ll->next = ll_old;
  }

  ll->ch_ctrl = config->ch_ctrl & (~0x7ff);
  ll->ch_ctrl |= old_len - new_len * (count - 1);
  config->ch_ctrl &= 0x7fffffff;
 }
}
