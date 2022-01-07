
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_spinlock ;
typedef int acpi_cpu_flags ;


 int spin_unlock_irqrestore (int ,int ) ;

void acpi_os_release_lock(acpi_spinlock lockp, acpi_cpu_flags flags)
{
 spin_unlock_irqrestore(lockp, flags);
}
