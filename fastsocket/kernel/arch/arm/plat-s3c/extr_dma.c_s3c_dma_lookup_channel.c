
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int dummy; } ;


 unsigned int DMACH_LOW_LEVEL ;
 struct s3c2410_dma_chan* s3c2410_chans ;
 struct s3c2410_dma_chan** s3c_dma_chan_map ;

struct s3c2410_dma_chan *s3c_dma_lookup_channel(unsigned int channel)
{
 if (channel & DMACH_LOW_LEVEL)
  return &s3c2410_chans[channel & ~DMACH_LOW_LEVEL];
 else
  return s3c_dma_chan_map[channel];
}
