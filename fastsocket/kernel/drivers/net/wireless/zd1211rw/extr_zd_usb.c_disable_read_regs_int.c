
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_interrupt {int lock; int read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;


 int atomic_set (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void disable_read_regs_int(struct zd_usb *usb)
{
 struct zd_usb_interrupt *intr = &usb->intr;

 spin_lock_irq(&intr->lock);
 atomic_set(&intr->read_regs_enabled, 0);
 spin_unlock_irq(&intr->lock);
}
