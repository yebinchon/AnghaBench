
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
typedef size_t acpi_mutex_handle ;
struct TYPE_2__ {int thread_id; int * mutex; } ;


 int ACPI_FUNCTION_TRACE_U32 (int ,size_t) ;
 size_t ACPI_MAX_MUTEX ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int acpi_os_delete_mutex (int *) ;
 int return_ACPI_STATUS (int ) ;
 int ut_delete_mutex ;

__attribute__((used)) static acpi_status acpi_ut_delete_mutex(acpi_mutex_handle mutex_id)
{

 ACPI_FUNCTION_TRACE_U32(ut_delete_mutex, mutex_id);

 if (mutex_id > ACPI_MAX_MUTEX) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 acpi_os_delete_mutex(acpi_gbl_mutex_info[mutex_id].mutex);

 acpi_gbl_mutex_info[mutex_id].mutex = ((void*)0);
 acpi_gbl_mutex_info[mutex_id].thread_id = ACPI_MUTEX_NOT_ACQUIRED;

 return_ACPI_STATUS(AE_OK);
}
