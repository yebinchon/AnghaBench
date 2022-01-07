
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IO_APIC_route_entry {int dummy; } ;


 int __ioapic_write_entry (int,int,struct IO_APIC_route_entry) ;
 int ioapic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ioapic_write_entry(int apic, int pin, struct IO_APIC_route_entry e)
{
 unsigned long flags;
 spin_lock_irqsave(&ioapic_lock, flags);
 __ioapic_write_entry(apic, pin, e);
 spin_unlock_irqrestore(&ioapic_lock, flags);
}
