
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IO_APIC_route_entry {int dummy; } ;
union entry_union {struct IO_APIC_route_entry entry; void* w2; void* w1; } ;


 void* io_apic_read (int,int) ;
 int ioapic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct IO_APIC_route_entry ioapic_read_entry(int apic, int pin)
{
 union entry_union eu;
 unsigned long flags;
 spin_lock_irqsave(&ioapic_lock, flags);
 eu.w1 = io_apic_read(apic, 0x10 + 2 * pin);
 eu.w2 = io_apic_read(apic, 0x11 + 2 * pin);
 spin_unlock_irqrestore(&ioapic_lock, flags);
 return eu.entry;
}
