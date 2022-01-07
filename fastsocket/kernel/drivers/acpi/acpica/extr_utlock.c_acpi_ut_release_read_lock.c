
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_rw_lock {scalar_t__ num_readers; int reader_mutex; int writer_mutex; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_WAIT_FOREVER ;
 int acpi_os_acquire_mutex (int ,int ) ;
 int acpi_os_release_mutex (int ) ;

acpi_status acpi_ut_release_read_lock(struct acpi_rw_lock *lock)
{
 acpi_status status;

 status = acpi_os_acquire_mutex(lock->reader_mutex, ACPI_WAIT_FOREVER);
 if (ACPI_FAILURE(status)) {
  return status;
 }



 lock->num_readers--;
 if (lock->num_readers == 0) {
  acpi_os_release_mutex(lock->writer_mutex);
 }

 acpi_os_release_mutex(lock->reader_mutex);
 return status;
}
