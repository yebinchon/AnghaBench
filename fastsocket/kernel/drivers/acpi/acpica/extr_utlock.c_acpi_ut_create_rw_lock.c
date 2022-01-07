
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_rw_lock {int writer_mutex; int reader_mutex; scalar_t__ num_readers; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_os_create_mutex (int *) ;

acpi_status acpi_ut_create_rw_lock(struct acpi_rw_lock *lock)
{
 acpi_status status;

 lock->num_readers = 0;
 status = acpi_os_create_mutex(&lock->reader_mutex);
 if (ACPI_FAILURE(status)) {
  return status;
 }

 status = acpi_os_create_mutex(&lock->writer_mutex);
 return status;
}
