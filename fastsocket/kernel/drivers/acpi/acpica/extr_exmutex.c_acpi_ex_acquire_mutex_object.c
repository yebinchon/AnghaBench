
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ thread_id; int acquisition_depth; int * owner_thread; scalar_t__ original_sync_level; int os_mutex; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
typedef int u16 ;
typedef scalar_t__ acpi_thread_id ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_ev_acquire_global_lock (int ) ;
 int acpi_ex_system_wait_mutex (int ,int ) ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int ex_acquire_mutex_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_acquire_mutex_object(u16 timeout,
        union acpi_operand_object *obj_desc,
        acpi_thread_id thread_id)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ex_acquire_mutex_object, obj_desc);

 if (!obj_desc) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 if (obj_desc->mutex.thread_id == thread_id) {




  obj_desc->mutex.acquisition_depth++;
  return_ACPI_STATUS(AE_OK);
 }



 if (obj_desc == acpi_gbl_global_lock_mutex) {
  status = acpi_ev_acquire_global_lock(timeout);
 } else {
  status = acpi_ex_system_wait_mutex(obj_desc->mutex.os_mutex,
         timeout);
 }

 if (ACPI_FAILURE(status)) {



  return_ACPI_STATUS(status);
 }



 obj_desc->mutex.thread_id = thread_id;
 obj_desc->mutex.acquisition_depth = 1;
 obj_desc->mutex.original_sync_level = 0;
 obj_desc->mutex.owner_thread = ((void*)0);

 return_ACPI_STATUS(AE_OK);
}
