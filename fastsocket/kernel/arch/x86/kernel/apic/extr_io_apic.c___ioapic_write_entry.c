
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct IO_APIC_route_entry {int dummy; } ;
struct TYPE_2__ {int member_1; int member_0; } ;
union entry_union {int w1; int w2; struct IO_APIC_route_entry entry; TYPE_1__ member_0; } ;


 int io_apic_write (int,int,int ) ;

__attribute__((used)) static void
__ioapic_write_entry(int apic, int pin, struct IO_APIC_route_entry e)
{
 union entry_union eu = {{0, 0}};

 eu.entry = e;
 io_apic_write(apic, 0x11 + 2*pin, eu.w2);
 io_apic_write(apic, 0x10 + 2*pin, eu.w1);
}
