
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nes_qp {int pau_lock; int cm_node; int pau_list; } ;
struct nes_device {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 int atomic_inc (int *) ;
 int nes_mgt_free_skb (struct nes_device*,struct sk_buff*,int ) ;
 int nes_rem_ref_cm_node (int ) ;
 int pau_qps_destroyed ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nes_destroy_pau_qp(struct nes_device *nesdev, struct nes_qp *nesqp)
{
 struct sk_buff *skb;
 unsigned long flags;
 atomic_inc(&pau_qps_destroyed);



 spin_lock_irqsave(&nesqp->pau_lock, flags);
 while (skb_queue_len(&nesqp->pau_list)) {
  skb = skb_dequeue(&nesqp->pau_list);
  nes_mgt_free_skb(nesdev, skb, PCI_DMA_TODEVICE);
  nes_rem_ref_cm_node(nesqp->cm_node);
 }
 spin_unlock_irqrestore(&nesqp->pau_lock, flags);
}
