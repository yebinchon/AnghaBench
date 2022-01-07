
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ acquisition_depth; int * thread_id; int os_mutex; int * owner_thread; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 int acpi_ev_release_global_lock () ;
 int acpi_ex_unlink_mutex (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int acpi_os_release_mutex (int ) ;
 int ex_release_mutex_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_release_mutex_object(union acpi_operand_object *obj_desc)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_release_mutex_object);

 if (obj_desc->mutex.acquisition_depth == 0) {
  return (AE_NOT_ACQUIRED);
 }



 obj_desc->mutex.acquisition_depth--;
 if (obj_desc->mutex.acquisition_depth != 0) {



  return_ACPI_STATUS(AE_OK);
 }

 if (obj_desc->mutex.owner_thread) {



  acpi_ex_unlink_mutex(obj_desc);
  obj_desc->mutex.owner_thread = ((void*)0);
 }



 if (obj_desc == acpi_gbl_global_lock_mutex) {
  status = acpi_ev_release_global_lock();
 } else {
  acpi_os_release_mutex(obj_desc->mutex.os_mutex);
 }



 obj_desc->mutex.thread_id = ((void*)0);
 return_ACPI_STATUS(status);
}
