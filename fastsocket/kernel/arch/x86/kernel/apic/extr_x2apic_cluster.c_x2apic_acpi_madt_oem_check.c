
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x2apic_enabled () ;

__attribute__((used)) static int x2apic_acpi_madt_oem_check(char *oem_id, char *oem_table_id)
{
 return x2apic_enabled();
}
