
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp37xx_circ_dma_chain {unsigned int active_count; unsigned int active_index; unsigned int total_count; unsigned int cooked_count; int bus; int channel; } ;


 int STMP3XXX_DMA (int ,int ) ;
 unsigned int stmp3xxx_dma_read_semaphore (int ) ;

unsigned stmp37xx_circ_advance_cooked(struct stmp37xx_circ_dma_chain *chain)
{
 unsigned cooked;

 cooked = chain->active_count -
   stmp3xxx_dma_read_semaphore(STMP3XXX_DMA(chain->channel, chain->bus));

 chain->active_count -= cooked;
 chain->active_index += cooked;
 chain->active_index %= chain->total_count;

 chain->cooked_count += cooked;

 return cooked;
}
