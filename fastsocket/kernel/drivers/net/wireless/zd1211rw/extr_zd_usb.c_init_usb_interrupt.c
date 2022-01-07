
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int cr_int_addr; int completion; } ;
struct zd_usb_interrupt {TYPE_1__ read_regs; int read_regs_enabled; int interval; int lock; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;


 scalar_t__ CR_INTERRUPT ;
 int atomic_set (int *,int ) ;
 int cpu_to_le16 (int ) ;
 int init_completion (int *) ;
 int int_urb_interval (int ) ;
 int spin_lock_init (int *) ;
 int zd_usb_to_usbdev (struct zd_usb*) ;

__attribute__((used)) static inline void init_usb_interrupt(struct zd_usb *usb)
{
 struct zd_usb_interrupt *intr = &usb->intr;

 spin_lock_init(&intr->lock);
 intr->interval = int_urb_interval(zd_usb_to_usbdev(usb));
 init_completion(&intr->read_regs.completion);
 atomic_set(&intr->read_regs_enabled, 0);
 intr->read_regs.cr_int_addr = cpu_to_le16((u16)CR_INTERRUPT);
}
