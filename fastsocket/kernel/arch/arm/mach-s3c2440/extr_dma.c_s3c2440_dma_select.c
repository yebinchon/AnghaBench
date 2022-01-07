
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_map {int* channels; } ;
struct s3c2410_dma_chan {int dcon; size_t number; } ;


 int DMA_CH_VALID ;

__attribute__((used)) static void s3c2440_dma_select(struct s3c2410_dma_chan *chan,
          struct s3c24xx_dma_map *map)
{
 chan->dcon = map->channels[chan->number] & ~DMA_CH_VALID;
}
