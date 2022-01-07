
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp37xx_circ_dma_chain {int total_count; int * chain; int bus; int channel; } ;


 int STMP3XXX_DMA (int ,int ) ;
 int stmp3xxx_dma_free_command (int ,int *) ;

void stmp3xxx_dma_free_chain(struct stmp37xx_circ_dma_chain *chain)
{
 int i;

 for (i = 0; i < chain->total_count; i++)
  stmp3xxx_dma_free_command(
   STMP3XXX_DMA(chain->channel, chain->bus),
   &chain->chain[i]);
}
