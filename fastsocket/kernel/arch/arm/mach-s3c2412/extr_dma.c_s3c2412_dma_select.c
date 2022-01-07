
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_map {int dummy; } ;
struct s3c2410_dma_chan {int source; } ;


 int s3c2412_dma_direction (struct s3c2410_dma_chan*,struct s3c24xx_dma_map*,int ) ;

__attribute__((used)) static void s3c2412_dma_select(struct s3c2410_dma_chan *chan,
          struct s3c24xx_dma_map *map)
{
 s3c2412_dma_direction(chan, map, chan->source);
}
