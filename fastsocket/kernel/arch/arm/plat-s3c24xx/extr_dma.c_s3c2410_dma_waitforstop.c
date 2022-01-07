
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int number; } ;


 unsigned long S3C2410_DMASKTRIG_ON ;
 int S3C2410_DMA_DMASKTRIG ;
 unsigned long dma_rdreg (struct s3c2410_dma_chan*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void s3c2410_dma_waitforstop(struct s3c2410_dma_chan *chan)
{
 unsigned long tmp;
 unsigned int timeout = 0x10000;

 while (timeout-- > 0) {
  tmp = dma_rdreg(chan, S3C2410_DMA_DMASKTRIG);

  if (!(tmp & S3C2410_DMASKTRIG_ON))
   return;
 }

 pr_debug("dma%d: failed to stop?\n", chan->number);
}
