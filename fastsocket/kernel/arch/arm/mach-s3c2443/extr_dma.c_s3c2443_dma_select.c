
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_map {int* channels; } ;
struct s3c2410_dma_chan {scalar_t__ regs; } ;


 int S3C2443_DMAREQSEL_HW ;
 scalar_t__ S3C2443_DMA_DMAREQSEL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c2443_dma_select(struct s3c2410_dma_chan *chan,
          struct s3c24xx_dma_map *map)
{
 writel(map->channels[0] | S3C2443_DMAREQSEL_HW,
        chan->regs + S3C2443_DMA_DMAREQSEL);
}
