
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* eoi_write; void* write; int read; } ;


 TYPE_1__* apic ;
 int native_apic_read_dummy ;
 void* native_apic_write_dummy ;

void apic_disable(void)
{
 apic->read = native_apic_read_dummy;
 apic->write = native_apic_write_dummy;
 apic->eoi_write = native_apic_write_dummy;
}
