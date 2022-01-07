
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_rx {int setup_mutex; int lock; int * urbs; } ;
struct zd_usb {struct zd_usb_rx rx; } ;


 int __zd_usb_disable_rx (struct zd_usb*) ;
 int __zd_usb_enable_rx (struct zd_usb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zd_usb_reset_rx_idle_timer (struct zd_usb*) ;

__attribute__((used)) static void zd_usb_reset_rx(struct zd_usb *usb)
{
 bool do_reset;
 struct zd_usb_rx *rx = &usb->rx;
 unsigned long flags;

 mutex_lock(&rx->setup_mutex);

 spin_lock_irqsave(&rx->lock, flags);
 do_reset = rx->urbs != ((void*)0);
 spin_unlock_irqrestore(&rx->lock, flags);

 if (do_reset) {
  __zd_usb_disable_rx(usb);
  __zd_usb_enable_rx(usb);
 }

 mutex_unlock(&rx->setup_mutex);

 if (do_reset)
  zd_usb_reset_rx_idle_timer(usb);
}
