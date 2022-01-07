
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp37xx_circ_dma_chain {scalar_t__ cooked_count; scalar_t__ active_count; int total_count; int free_count; scalar_t__ cooked_index; scalar_t__ active_index; scalar_t__ free_index; int bus; int channel; } ;


 int BUG_ON (int ) ;
 int STMP3XXX_DMA (int ,int ) ;
 int stmp3xxx_dma_running (int ) ;

void stmp37xx_circ_clear_chain(struct stmp37xx_circ_dma_chain *chain)
{
 BUG_ON(stmp3xxx_dma_running(STMP3XXX_DMA(chain->channel, chain->bus)));
 chain->free_index = 0;
 chain->active_index = 0;
 chain->cooked_index = 0;
 chain->free_count = chain->total_count;
 chain->active_count = 0;
 chain->cooked_count = 0;
}
