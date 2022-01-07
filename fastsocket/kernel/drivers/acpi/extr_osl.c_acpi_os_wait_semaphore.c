
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct semaphore {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_WAIT_FOREVER ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AE_TIME ;
 long MAX_SCHEDULE_TIMEOUT ;
 int acpi_format_exception (int ) ;
 int down_timeout (struct semaphore*,long) ;
 long msecs_to_jiffies (scalar_t__) ;

acpi_status acpi_os_wait_semaphore(acpi_handle handle, u32 units, u16 timeout)
{
 acpi_status status = AE_OK;
 struct semaphore *sem = (struct semaphore *)handle;
 long jiffies;
 int ret = 0;

 if (!sem || (units < 1))
  return AE_BAD_PARAMETER;

 if (units > 1)
  return AE_SUPPORT;

 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX, "Waiting for semaphore[%p|%d|%d]\n",
     handle, units, timeout));

 if (timeout == ACPI_WAIT_FOREVER)
  jiffies = MAX_SCHEDULE_TIMEOUT;
 else
  jiffies = msecs_to_jiffies(timeout);

 ret = down_timeout(sem, jiffies);
 if (ret)
  status = AE_TIME;

 if (ACPI_FAILURE(status)) {
  ACPI_DEBUG_PRINT((ACPI_DB_MUTEX,
      "Failed to acquire semaphore[%p|%d|%d], %s",
      handle, units, timeout,
      acpi_format_exception(status)));
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_MUTEX,
      "Acquired semaphore[%p|%d|%d]", handle,
      units, timeout));
 }

 return status;
}
