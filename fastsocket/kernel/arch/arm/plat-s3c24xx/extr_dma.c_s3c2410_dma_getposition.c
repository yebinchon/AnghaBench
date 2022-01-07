
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int S3C2410_DMA_DCDST ;
 int S3C2410_DMA_DCSRC ;
 int dma_rdreg (struct s3c2410_dma_chan*,int ) ;
 struct s3c2410_dma_chan* s3c_dma_lookup_channel (unsigned int) ;

int s3c2410_dma_getposition(unsigned int channel, dma_addr_t *src, dma_addr_t *dst)
{
 struct s3c2410_dma_chan *chan = s3c_dma_lookup_channel(channel);

 if (chan == ((void*)0))
  return -EINVAL;

 if (src != ((void*)0))
   *src = dma_rdreg(chan, S3C2410_DMA_DCSRC);

  if (dst != ((void*)0))
   *dst = dma_rdreg(chan, S3C2410_DMA_DCDST);

  return 0;
}
