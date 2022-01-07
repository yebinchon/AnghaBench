
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_rx {unsigned int urbs_count; int lock; struct urb** urbs; } ;
struct zd_usb {struct zd_usb_rx rx; } ;
struct urb {int dummy; } ;


 int free_rx_urb (struct urb*) ;
 int kfree (struct urb**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void __zd_usb_disable_rx(struct zd_usb *usb)
{
 int i;
 unsigned long flags;
 struct urb **urbs;
 unsigned int count;
 struct zd_usb_rx *rx = &usb->rx;

 spin_lock_irqsave(&rx->lock, flags);
 urbs = rx->urbs;
 count = rx->urbs_count;
 spin_unlock_irqrestore(&rx->lock, flags);
 if (!urbs)
  return;

 for (i = 0; i < count; i++) {
  usb_kill_urb(urbs[i]);
  free_rx_urb(urbs[i]);
 }
 kfree(urbs);

 spin_lock_irqsave(&rx->lock, flags);
 rx->urbs = ((void*)0);
 rx->urbs_count = 0;
 spin_unlock_irqrestore(&rx->lock, flags);
}
