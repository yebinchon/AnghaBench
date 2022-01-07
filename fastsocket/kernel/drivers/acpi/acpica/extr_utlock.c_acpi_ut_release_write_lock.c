
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_rw_lock {int writer_mutex; } ;


 int acpi_os_release_mutex (int ) ;

void acpi_ut_release_write_lock(struct acpi_rw_lock *lock)
{

 acpi_os_release_mutex(lock->writer_mutex);
}
