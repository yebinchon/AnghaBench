
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {int* channel_allocated; int lock; struct mite_channel* channels; } ;
struct mite_dma_descriptor_ring {int dummy; } ;
struct mite_channel {struct mite_dma_descriptor_ring* ring; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct mite_channel *mite_request_channel_in_range(struct mite_struct *mite,
         struct
         mite_dma_descriptor_ring
         *ring, unsigned min_channel,
         unsigned max_channel)
{
 int i;
 unsigned long flags;
 struct mite_channel *channel = ((void*)0);


 spin_lock_irqsave(&mite->lock, flags);
 for (i = min_channel; i <= max_channel; ++i) {
  if (mite->channel_allocated[i] == 0) {
   mite->channel_allocated[i] = 1;
   channel = &mite->channels[i];
   channel->ring = ring;
   break;
  }
 }
 spin_unlock_irqrestore(&mite->lock, flags);
 return channel;
}
