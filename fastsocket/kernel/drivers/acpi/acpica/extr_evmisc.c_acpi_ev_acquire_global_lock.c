
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
typedef scalar_t__ acpi_status ;
typedef int acpi_cpu_flags ;
struct TYPE_3__ {int os_mutex; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int ACPI_ACQUIRE_GLOBAL_LOCK (int ,void*) ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_WAIT_FOREVER ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TIME ;
 void* FALSE ;
 void* TRUE ;
 int acpi_ev_global_lock_acquired ;
 void* acpi_ev_global_lock_pending ;
 int acpi_ev_global_lock_pending_lock ;
 scalar_t__ acpi_ev_global_lock_thread_id ;
 scalar_t__ acpi_ex_system_wait_mutex (int ,int ) ;
 scalar_t__ acpi_ex_system_wait_semaphore (int ,int ) ;
 int acpi_gbl_FACS ;
 void* acpi_gbl_global_lock_acquired ;
 int acpi_gbl_global_lock_handle ;
 TYPE_2__* acpi_gbl_global_lock_mutex ;
 int acpi_gbl_global_lock_present ;
 int acpi_gbl_global_lock_semaphore ;
 int acpi_os_acquire_lock (int ) ;
 scalar_t__ acpi_os_get_thread_id () ;
 int acpi_os_release_lock (int ,int ) ;
 int ev_acquire_global_lock ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_ev_acquire_global_lock(u16 timeout)
{
 acpi_cpu_flags flags;
 acpi_status status = AE_OK;
 u8 acquired = FALSE;

 ACPI_FUNCTION_TRACE(ev_acquire_global_lock);





 status = acpi_ex_system_wait_mutex(
   acpi_gbl_global_lock_mutex->mutex.os_mutex, 0);
 if (status == AE_TIME) {
  if (acpi_ev_global_lock_thread_id == acpi_os_get_thread_id()) {
   acpi_ev_global_lock_acquired++;
   return AE_OK;
  }
 }

 if (ACPI_FAILURE(status)) {
  status = acpi_ex_system_wait_mutex(
    acpi_gbl_global_lock_mutex->mutex.os_mutex,
    timeout);
 }
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 acpi_ev_global_lock_thread_id = acpi_os_get_thread_id();
 acpi_ev_global_lock_acquired++;
 acpi_gbl_global_lock_handle++;
 if (acpi_gbl_global_lock_handle == 0) {
  acpi_gbl_global_lock_handle = 1;
 }





 if (!acpi_gbl_global_lock_present) {
  acpi_gbl_global_lock_acquired = TRUE;
  return_ACPI_STATUS(AE_OK);
 }

 flags = acpi_os_acquire_lock(acpi_ev_global_lock_pending_lock);

 do {



  ACPI_ACQUIRE_GLOBAL_LOCK(acpi_gbl_FACS, acquired);
  if (acquired) {
   acpi_gbl_global_lock_acquired = TRUE;

   ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
       "Acquired hardware Global Lock\n"));
   break;
  }

  acpi_ev_global_lock_pending = TRUE;

  acpi_os_release_lock(acpi_ev_global_lock_pending_lock, flags);





  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Waiting for hardware Global Lock\n"));





  status = acpi_ex_system_wait_semaphore(
      acpi_gbl_global_lock_semaphore,
      ACPI_WAIT_FOREVER);

  flags = acpi_os_acquire_lock(acpi_ev_global_lock_pending_lock);

 } while (ACPI_SUCCESS(status));

 acpi_ev_global_lock_pending = FALSE;

 acpi_os_release_lock(acpi_ev_global_lock_pending_lock, flags);

 return_ACPI_STATUS(status);
}
