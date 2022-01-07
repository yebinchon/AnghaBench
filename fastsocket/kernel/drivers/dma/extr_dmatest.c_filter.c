
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int device; } ;


 int dmatest_match_channel (struct dma_chan*) ;
 int dmatest_match_device (int ) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 if (!dmatest_match_channel(chan) || !dmatest_match_device(chan->device))
  return 0;
 else
  return 1;
}
