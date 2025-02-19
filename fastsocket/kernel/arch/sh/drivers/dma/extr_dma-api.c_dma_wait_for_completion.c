
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_info {TYPE_1__* ops; } ;
struct dma_channel {int flags; int wait_queue; } ;
struct TYPE_2__ {scalar_t__ (* get_residue ) (struct dma_channel*) ;} ;


 int DMA_TEI_CAPABLE ;
 int cpu_relax () ;
 struct dma_channel* get_dma_channel (unsigned int) ;
 struct dma_info* get_dma_info (unsigned int) ;
 scalar_t__ stub1 (struct dma_channel*) ;
 scalar_t__ stub2 (struct dma_channel*) ;
 int wait_event (int ,int) ;

void dma_wait_for_completion(unsigned int chan)
{
 struct dma_info *info = get_dma_info(chan);
 struct dma_channel *channel = get_dma_channel(chan);

 if (channel->flags & DMA_TEI_CAPABLE) {
  wait_event(channel->wait_queue,
      (info->ops->get_residue(channel) == 0));
  return;
 }

 while (info->ops->get_residue(channel))
  cpu_relax();
}
