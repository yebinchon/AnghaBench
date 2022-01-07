
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion; } ;
struct zd_usb_interrupt {int read_regs_int_overridden; int lock; TYPE_1__ read_regs; int read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct urb {struct zd_usb* context; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int complete (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void handle_regs_int_override(struct urb *urb)
{
 struct zd_usb *usb = urb->context;
 struct zd_usb_interrupt *intr = &usb->intr;

 spin_lock(&intr->lock);
 if (atomic_read(&intr->read_regs_enabled)) {
  atomic_set(&intr->read_regs_enabled, 0);
  intr->read_regs_int_overridden = 1;
  complete(&intr->read_regs.completion);
 }
 spin_unlock(&intr->lock);
}
