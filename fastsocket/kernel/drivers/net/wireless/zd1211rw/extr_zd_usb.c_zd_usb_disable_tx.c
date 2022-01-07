
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {scalar_t__ submitted_urbs; int lock; int submitted_skbs; int submitted; int enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_anchored_urbs (int *) ;

void zd_usb_disable_tx(struct zd_usb *usb)
{
 struct zd_usb_tx *tx = &usb->tx;
 unsigned long flags;

 atomic_set(&tx->enabled, 0);


 usb_kill_anchored_urbs(&tx->submitted);

 spin_lock_irqsave(&tx->lock, flags);
 WARN_ON(!skb_queue_empty(&tx->submitted_skbs));
 WARN_ON(tx->submitted_urbs != 0);
 tx->submitted_urbs = 0;
 spin_unlock_irqrestore(&tx->lock, flags);




}
