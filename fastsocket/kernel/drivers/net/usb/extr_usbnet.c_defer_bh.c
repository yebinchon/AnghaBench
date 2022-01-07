
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qlen; int lock; } ;
struct usbnet {TYPE_1__ done; int bh; } ;
struct skb_data {int state; } ;
struct sk_buff_head {int lock; } ;
struct sk_buff {scalar_t__ cb; } ;
typedef enum skb_state { ____Placeholder_skb_state } skb_state ;


 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static enum skb_state defer_bh(struct usbnet *dev, struct sk_buff *skb,
  struct sk_buff_head *list, enum skb_state state)
{
 unsigned long flags;
 enum skb_state old_state;
 struct skb_data *entry = (struct skb_data *) skb->cb;

 spin_lock_irqsave(&list->lock, flags);
 old_state = entry->state;
 entry->state = state;
 __skb_unlink(skb, list);
 spin_unlock(&list->lock);
 spin_lock(&dev->done.lock);
 __skb_queue_tail(&dev->done, skb);
 if (dev->done.qlen == 1)
  tasklet_schedule(&dev->bh);
 spin_unlock_irqrestore(&dev->done.lock, flags);
 return old_state;
}
