
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int * data; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct TYPE_4__ {scalar_t__ qlen; int lock; } ;
struct bcsp_struct {scalar_t__ txack_req; TYPE_2__ unack; int rel; int tbcsp; int unrel; } ;
struct TYPE_3__ {int pkt_type; } ;


 int BCSP_ACK_PKT ;
 scalar_t__ BCSP_TXWINSIZE ;
 int BT_ERR (char*) ;
 int HZ ;
 int SINGLE_DEPTH_NESTING ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 struct sk_buff* bcsp_prepare_pkt (struct bcsp_struct*,int *,int ,int ) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct sk_buff *bcsp_dequeue(struct hci_uart *hu)
{
 struct bcsp_struct *bcsp = hu->priv;
 unsigned long flags;
 struct sk_buff *skb;




 if ((skb = skb_dequeue(&bcsp->unrel)) != ((void*)0)) {
  struct sk_buff *nskb = bcsp_prepare_pkt(bcsp, skb->data, skb->len, bt_cb(skb)->pkt_type);
  if (nskb) {
   kfree_skb(skb);
   return nskb;
  } else {
   skb_queue_head(&bcsp->unrel, skb);
   BT_ERR("Could not dequeue pkt because alloc_skb failed");
  }
 }





 spin_lock_irqsave_nested(&bcsp->unack.lock, flags, SINGLE_DEPTH_NESTING);

 if (bcsp->unack.qlen < BCSP_TXWINSIZE && (skb = skb_dequeue(&bcsp->rel)) != ((void*)0)) {
  struct sk_buff *nskb = bcsp_prepare_pkt(bcsp, skb->data, skb->len, bt_cb(skb)->pkt_type);
  if (nskb) {
   __skb_queue_tail(&bcsp->unack, skb);
   mod_timer(&bcsp->tbcsp, jiffies + HZ / 4);
   spin_unlock_irqrestore(&bcsp->unack.lock, flags);
   return nskb;
  } else {
   skb_queue_head(&bcsp->rel, skb);
   BT_ERR("Could not dequeue pkt because alloc_skb failed");
  }
 }

 spin_unlock_irqrestore(&bcsp->unack.lock, flags);





 if (bcsp->txack_req) {


  struct sk_buff *nskb = bcsp_prepare_pkt(bcsp, ((void*)0), 0, BCSP_ACK_PKT);
  return nskb;
 }


 return ((void*)0);
}
