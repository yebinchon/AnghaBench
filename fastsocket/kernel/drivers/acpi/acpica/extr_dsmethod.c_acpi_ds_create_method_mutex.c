
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {union acpi_operand_object* mutex; int sync_level; } ;
struct TYPE_3__ {int sync_level; int os_mutex; } ;
union acpi_operand_object {TYPE_2__ method; TYPE_1__ mutex; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_MUTEX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_os_create_mutex (int *) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int ds_create_method_mutex ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ds_create_method_mutex(union acpi_operand_object *method_desc)
{
 union acpi_operand_object *mutex_desc;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ds_create_method_mutex);



 mutex_desc = acpi_ut_create_internal_object(ACPI_TYPE_MUTEX);
 if (!mutex_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 status = acpi_os_create_mutex(&mutex_desc->mutex.os_mutex);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 mutex_desc->mutex.sync_level = method_desc->method.sync_level;
 method_desc->method.mutex = mutex_desc;
 return_ACPI_STATUS(AE_OK);
}
