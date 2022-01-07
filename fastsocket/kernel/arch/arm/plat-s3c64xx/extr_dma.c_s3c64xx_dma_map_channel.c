
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int in_use; } ;


 unsigned int DMACH_PCM1_TX ;
 struct s3c2410_dma_chan* s3c2410_chans ;
 struct s3c2410_dma_chan** s3c_dma_chan_map ;

__attribute__((used)) static struct s3c2410_dma_chan *s3c64xx_dma_map_channel(unsigned int channel)
{
 struct s3c2410_dma_chan *chan;
 unsigned int start, offs;

 start = 0;

 if (channel >= DMACH_PCM1_TX)
  start = 8;

 for (offs = 0; offs < 8; offs++) {
  chan = &s3c2410_chans[start + offs];
  if (!chan->in_use)
   goto found;
 }

 return ((void*)0);

found:
 s3c_dma_chan_map[channel] = chan;
 return chan;
}
