
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int dma_chan_name (struct dma_chan*) ;
 scalar_t__ strcmp (int ,char*) ;
 char* test_channel ;

__attribute__((used)) static bool dmatest_match_channel(struct dma_chan *chan)
{
 if (test_channel[0] == '\0')
  return 1;
 return strcmp(dma_chan_name(chan), test_channel) == 0;
}
