
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmp3xxx_dma_descriptor {int handle; TYPE_1__* command; struct stmp3xxx_dma_descriptor* next_descr; } ;
struct stmp37xx_circ_dma_chain {unsigned int total_count; unsigned int free_count; int channel; int bus; scalar_t__ cooked_count; scalar_t__ active_count; scalar_t__ cooked_index; scalar_t__ active_index; scalar_t__ free_index; struct stmp3xxx_dma_descriptor* chain; } ;
struct TYPE_2__ {int next; } ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int WARN_ON (int) ;
 int stmp3xxx_dma_allocate_command (int,struct stmp3xxx_dma_descriptor*) ;
 int stmp3xxx_dma_free_command (int,struct stmp3xxx_dma_descriptor*) ;

int stmp3xxx_dma_make_chain(int ch, struct stmp37xx_circ_dma_chain *chain,
       struct stmp3xxx_dma_descriptor descriptors[],
       unsigned items)
{
 int i;
 int err = 0;

 if (items == 0)
  return err;

 for (i = 0; i < items; i++) {
  err = stmp3xxx_dma_allocate_command(ch, &descriptors[i]);
  if (err) {
   WARN_ON(err);




   if (i) {
    do {
     stmp3xxx_dma_free_command(ch,
          &descriptors
          [i]);
    } while (i-- > 0);
   }
   return err;
  }


  if (i > 0) {
   descriptors[i - 1].next_descr = &descriptors[i];
   descriptors[i - 1].command->next =
      descriptors[i].handle;
  }
 }


 descriptors[items - 1].next_descr = &descriptors[0];
 descriptors[items - 1].command->next = descriptors[0].handle;

 chain->total_count = items;
 chain->chain = descriptors;
 chain->free_index = 0;
 chain->active_index = 0;
 chain->cooked_index = 0;
 chain->free_count = items;
 chain->active_count = 0;
 chain->cooked_count = 0;
 chain->bus = STMP3XXX_DMA_BUS(ch);
 chain->channel = STMP3XXX_DMA_CHANNEL(ch);
 return err;
}
