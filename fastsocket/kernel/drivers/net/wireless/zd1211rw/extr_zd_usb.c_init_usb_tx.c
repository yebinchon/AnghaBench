
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {int watchdog_work; scalar_t__ watchdog_enabled; scalar_t__ submitted_urbs; int submitted; int submitted_skbs; scalar_t__ stopped; int enabled; int lock; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int init_usb_anchor (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int zd_tx_watchdog_handler ;

__attribute__((used)) static inline void init_usb_tx(struct zd_usb *usb)
{
 struct zd_usb_tx *tx = &usb->tx;

 spin_lock_init(&tx->lock);
 atomic_set(&tx->enabled, 0);
 tx->stopped = 0;
 skb_queue_head_init(&tx->submitted_skbs);
 init_usb_anchor(&tx->submitted);
 tx->submitted_urbs = 0;
 tx->watchdog_enabled = 0;
 INIT_DELAYED_WORK(&tx->watchdog_work, zd_tx_watchdog_handler);
}
