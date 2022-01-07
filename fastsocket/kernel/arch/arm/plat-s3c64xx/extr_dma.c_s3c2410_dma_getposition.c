
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {scalar_t__ regs; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 scalar_t__ PL080_CH_DST_ADDR ;
 scalar_t__ PL080_CH_SRC_ADDR ;
 int WARN_ON (int) ;
 int readl (scalar_t__) ;
 struct s3c2410_dma_chan* s3c_dma_lookup_channel (unsigned int) ;

int s3c2410_dma_getposition(unsigned int channel,
       dma_addr_t *src, dma_addr_t *dst)
{
 struct s3c2410_dma_chan *chan = s3c_dma_lookup_channel(channel);

 WARN_ON(!chan);
 if (!chan)
  return -EINVAL;

 if (src != ((void*)0))
  *src = readl(chan->regs + PL080_CH_SRC_ADDR);

 if (dst != ((void*)0))
  *dst = readl(chan->regs + PL080_CH_DST_ADDR);

 return 0;
}
