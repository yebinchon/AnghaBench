
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int lock; int tx_queue; int * tx_buff; } ;


 int dev_kfree_skb (int *) ;
 int * skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void scc_discard_buffers(struct scc_channel *scc)
{
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 if (scc->tx_buff != ((void*)0))
 {
  dev_kfree_skb(scc->tx_buff);
  scc->tx_buff = ((void*)0);
 }

 while (!skb_queue_empty(&scc->tx_queue))
  dev_kfree_skb(skb_dequeue(&scc->tx_queue));

 spin_unlock_irqrestore(&scc->lock, flags);
}
