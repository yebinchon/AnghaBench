
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NMI_IO_APIC ;
 int __acpi_nmi_disable ;
 scalar_t__ atomic_read (int *) ;
 int nmi_active ;
 scalar_t__ nmi_watchdog ;
 int on_each_cpu (int ,int *,int) ;

void acpi_nmi_disable(void)
{
 if (atomic_read(&nmi_active) && nmi_watchdog == NMI_IO_APIC)
  on_each_cpu(__acpi_nmi_disable, ((void*)0), 1);
}
