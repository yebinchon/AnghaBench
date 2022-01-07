
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_cpu_flags ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_INTERRUPT_HANDLED ;
 int AE_INFO ;
 scalar_t__ FALSE ;
 scalar_t__ acpi_ev_global_lock_pending ;
 int acpi_ev_global_lock_pending_lock ;
 int acpi_gbl_global_lock_semaphore ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int acpi_os_signal_semaphore (int ,int) ;

__attribute__((used)) static u32 acpi_ev_global_lock_handler(void *context)
{
 acpi_status status;
 acpi_cpu_flags flags;

 flags = acpi_os_acquire_lock(acpi_ev_global_lock_pending_lock);

 if (!acpi_ev_global_lock_pending) {
  goto out;
 }



 status = acpi_os_signal_semaphore(acpi_gbl_global_lock_semaphore, 1);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Could not signal Global Lock semaphore"));
 }

 acpi_ev_global_lock_pending = FALSE;

 out:
 acpi_os_release_lock(acpi_ev_global_lock_pending_lock, flags);

 return (ACPI_INTERRUPT_HANDLED);
}
