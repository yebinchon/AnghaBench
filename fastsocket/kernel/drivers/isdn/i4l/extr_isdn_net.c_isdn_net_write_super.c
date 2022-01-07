
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int xmit_lock; int super_tx_queue; int tqueue; } ;
typedef TYPE_1__ isdn_net_local ;


 scalar_t__ in_irq () ;
 int isdn_net_lp_busy (TYPE_1__*) ;
 int isdn_net_writebuf_skb (TYPE_1__*,struct sk_buff*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void isdn_net_write_super(isdn_net_local *lp, struct sk_buff *skb)
{
 if (in_irq()) {


  skb_queue_tail(&lp->super_tx_queue, skb);
  schedule_work(&lp->tqueue);
  return;
 }

 spin_lock_bh(&lp->xmit_lock);
 if (!isdn_net_lp_busy(lp)) {
  isdn_net_writebuf_skb(lp, skb);
 } else {
  skb_queue_tail(&lp->super_tx_queue, skb);
 }
 spin_unlock_bh(&lp->xmit_lock);
}
