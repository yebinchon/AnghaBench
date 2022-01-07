
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int acpi_status ;
struct TYPE_3__ {int os_mutex; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int ACPI_BITREG_GLOBAL_LOCK_RELEASE ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ENABLE_EVENT ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_RELEASE_GLOBAL_LOCK (int ,void*) ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 void* FALSE ;
 scalar_t__ acpi_ev_global_lock_acquired ;
 int * acpi_ev_global_lock_thread_id ;
 int acpi_gbl_FACS ;
 void* acpi_gbl_global_lock_acquired ;
 TYPE_2__* acpi_gbl_global_lock_mutex ;
 scalar_t__ acpi_gbl_global_lock_present ;
 int acpi_os_release_mutex (int ) ;
 int acpi_write_bit_register (int ,int ) ;
 int ev_release_global_lock ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_release_global_lock(void)
{
 u8 pending = FALSE;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ev_release_global_lock);



 if (!acpi_gbl_global_lock_acquired) {
  ACPI_WARNING((AE_INFO,
         "Cannot release the ACPI Global Lock, it has not been acquired"));
  return_ACPI_STATUS(AE_NOT_ACQUIRED);
 }

 acpi_ev_global_lock_acquired--;
 if (acpi_ev_global_lock_acquired > 0) {
  return AE_OK;
 }

 if (acpi_gbl_global_lock_present) {



  ACPI_RELEASE_GLOBAL_LOCK(acpi_gbl_FACS, pending);





  if (pending) {
   status =
       acpi_write_bit_register
       (ACPI_BITREG_GLOBAL_LOCK_RELEASE,
        ACPI_ENABLE_EVENT);
  }

  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Released hardware Global Lock\n"));
 }

 acpi_gbl_global_lock_acquired = FALSE;


 acpi_ev_global_lock_thread_id = ((void*)0);
 acpi_ev_global_lock_acquired = 0;
 acpi_os_release_mutex(acpi_gbl_global_lock_mutex->mutex.os_mutex);
 return_ACPI_STATUS(status);
}
