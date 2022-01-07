
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
union entry_union {int w2; int w1; TYPE_1__ entry; } ;


 int io_apic_write (int,int,int ) ;
 int ioapic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ioapic_mask_entry(int apic, int pin)
{
 unsigned long flags;
 union entry_union eu = { .entry.mask = 1 };

 spin_lock_irqsave(&ioapic_lock, flags);
 io_apic_write(apic, 0x10 + 2*pin, eu.w1);
 io_apic_write(apic, 0x11 + 2*pin, eu.w2);
 spin_unlock_irqrestore(&ioapic_lock, flags);
}
