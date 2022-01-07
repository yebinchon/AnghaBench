
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c24xx_dma_order_ch {size_t* list; int flags; } ;
struct s3c24xx_dma_map {size_t* channels; } ;
struct s3c2410_dma_chan {scalar_t__ in_use; int req_ch; struct s3c24xx_dma_map* map; } ;
struct TYPE_4__ {struct s3c24xx_dma_order_ch* channels; } ;
struct TYPE_3__ {int map_size; int (* select ) (struct s3c2410_dma_chan*,struct s3c24xx_dma_map*) ;struct s3c24xx_dma_map* map; } ;


 int DMA_CH_NEVER ;
 int DMA_CH_VALID ;
 int dma_channels ;
 TYPE_2__* dma_order ;
 TYPE_1__ dma_sel ;
 int is_channel_valid (size_t) ;
 int printk (char*,int,int) ;
 struct s3c2410_dma_chan* s3c2410_chans ;
 struct s3c2410_dma_chan** s3c_dma_chan_map ;
 int stub1 (struct s3c2410_dma_chan*,struct s3c24xx_dma_map*) ;

__attribute__((used)) static struct s3c2410_dma_chan *s3c2410_dma_map_channel(int channel)
{
 struct s3c24xx_dma_order_ch *ord = ((void*)0);
 struct s3c24xx_dma_map *ch_map;
 struct s3c2410_dma_chan *dmach;
 int ch;

 if (dma_sel.map == ((void*)0) || channel > dma_sel.map_size)
  return ((void*)0);

 ch_map = dma_sel.map + channel;



 if (dma_order) {
  ord = &dma_order->channels[channel];

  for (ch = 0; ch < dma_channels; ch++) {
   if (!is_channel_valid(ord->list[ch]))
    continue;

   if (s3c2410_chans[ord->list[ch]].in_use == 0) {
    ch = ord->list[ch] & ~DMA_CH_VALID;
    goto found;
   }
  }

  if (ord->flags & DMA_CH_NEVER)
   return ((void*)0);
 }



 for (ch = 0; ch < dma_channels; ch++) {
  if (!is_channel_valid(ch_map->channels[ch]))
   continue;

  if (s3c2410_chans[ch].in_use == 0) {
   printk("mapped channel %d to %d\n", channel, ch);
   break;
  }
 }

 if (ch >= dma_channels)
  return ((void*)0);



 found:
 dmach = &s3c2410_chans[ch];
 dmach->map = ch_map;
 dmach->req_ch = channel;
 s3c_dma_chan_map[channel] = dmach;



 (dma_sel.select)(dmach, ch_map);

 return dmach;
}
