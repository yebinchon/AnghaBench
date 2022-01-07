
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_spinlock ;


 int AE_OK ;
 int spin_lock_init (int ) ;

acpi_status acpi_os_create_lock(acpi_spinlock * handle)
{
 spin_lock_init(*handle);

 return AE_OK;
}
