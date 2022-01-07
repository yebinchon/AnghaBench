
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_fifo {int tx_lock; int handle; } ;
struct sk_buff {int dummy; } ;


 int NR_SKB_COMPLETED ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vxge_hw_vpath_poll_tx (int ,struct sk_buff***,int,int*) ;

__attribute__((used)) static inline void VXGE_COMPLETE_VPATH_TX(struct vxge_fifo *fifo)
{
 unsigned long flags = 0;
 struct sk_buff **skb_ptr = ((void*)0);
 struct sk_buff **temp;

 struct sk_buff *completed[128];
 int more;

 do {
  more = 0;
  skb_ptr = completed;

  if (spin_trylock_irqsave(&fifo->tx_lock, flags)) {
   vxge_hw_vpath_poll_tx(fifo->handle, &skb_ptr,
      128, &more);
   spin_unlock_irqrestore(&fifo->tx_lock, flags);
  }

  for (temp = completed; temp != skb_ptr; temp++)
   dev_kfree_skb_irq(*temp);
 } while (more) ;
}
