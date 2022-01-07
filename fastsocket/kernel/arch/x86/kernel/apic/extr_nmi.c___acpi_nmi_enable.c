
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DM_NMI ;
 int APIC_LVT0 ;
 int apic_write (int ,int ) ;

__attribute__((used)) static void __acpi_nmi_enable(void *__unused)
{
 apic_write(APIC_LVT0, APIC_DM_NMI);
}
