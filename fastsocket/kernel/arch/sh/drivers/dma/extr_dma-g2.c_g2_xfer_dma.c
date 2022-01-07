
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_channel {unsigned int chan; int sar; int dar; int count; int mode; } ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int g2_addr; int root_addr; int size; int direction; int ctrl; int xfer_enable; int chan_enable; } ;


 int EINVAL ;
 int flush_icache_range (unsigned long,int) ;
 int g2_disable_dma (struct dma_channel*) ;
 TYPE_2__* g2_dma ;
 int g2_enable_dma (struct dma_channel*) ;
 int pr_debug (char*,int,int,int,int,int,int ,int ) ;
 int printk (char*,int) ;

__attribute__((used)) static int g2_xfer_dma(struct dma_channel *chan)
{
 unsigned int chan_nr = chan->chan;

 if (chan->sar & 31) {
  printk("g2dma: unaligned source 0x%lx\n", chan->sar);
  return -EINVAL;
 }

 if (chan->dar & 31) {
  printk("g2dma: unaligned dest 0x%lx\n", chan->dar);
  return -EINVAL;
 }


 if (chan->count & 31)
  chan->count = (chan->count + (32 - 1)) & ~(32 - 1);


 chan->dar += 0xa0800000;


 chan->mode = !chan->mode;

 flush_icache_range((unsigned long)chan->sar, chan->count);

 g2_disable_dma(chan);

 g2_dma->channel[chan_nr].g2_addr = chan->dar & 0x1fffffe0;
 g2_dma->channel[chan_nr].root_addr = chan->sar & 0x1fffffe0;
 g2_dma->channel[chan_nr].size = (chan->count & ~31) | 0x80000000;
 g2_dma->channel[chan_nr].direction = chan->mode;






 g2_dma->channel[chan_nr].ctrl = 5;

 g2_enable_dma(chan);


 pr_debug("count, sar, dar, mode, ctrl, chan, xfer: %ld, 0x%08lx, "
   "0x%08lx, %ld, %ld, %ld, %ld\n",
   g2_dma->channel[chan_nr].size,
   g2_dma->channel[chan_nr].root_addr,
   g2_dma->channel[chan_nr].g2_addr,
   g2_dma->channel[chan_nr].direction,
   g2_dma->channel[chan_nr].ctrl,
   g2_dma->channel[chan_nr].chan_enable,
   g2_dma->channel[chan_nr].xfer_enable);

 return 0;
}
