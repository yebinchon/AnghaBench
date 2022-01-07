
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ thread_count; int method_flags; scalar_t__ sync_level; TYPE_3__* mutex; int owner_id; } ;
union acpi_operand_object {TYPE_4__ method; } ;
struct acpi_walk_state {TYPE_1__* thread; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
struct TYPE_6__ {scalar_t__ sync_level; scalar_t__ thread_id; scalar_t__ original_sync_level; int os_mutex; int acquisition_depth; } ;
struct TYPE_7__ {TYPE_2__ mutex; } ;
struct TYPE_5__ {scalar_t__ current_sync_level; scalar_t__ thread_id; } ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 scalar_t__ ACPI_UINT8_MAX ;
 int ACPI_WAIT_FOREVER ;
 int AE_AML_METHOD_LIMIT ;
 int AE_AML_MUTEX_ORDER ;
 int AE_INFO ;
 int AE_NULL_ENTRY ;
 int AE_OK ;
 int AML_METHOD_SERIALIZED ;
 int acpi_ds_create_method_mutex (union acpi_operand_object*) ;
 int acpi_ex_system_wait_mutex (int ,int ) ;
 int acpi_os_release_mutex (int ) ;
 int acpi_ut_allocate_owner_id (int *) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int ds_begin_method_execution ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_begin_method_execution(struct acpi_namespace_node *method_node,
          union acpi_operand_object *obj_desc,
          struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_PTR(ds_begin_method_execution, method_node);

 if (!method_node) {
  return_ACPI_STATUS(AE_NULL_ENTRY);
 }



 if (obj_desc->method.thread_count == ACPI_UINT8_MAX) {
  ACPI_ERROR((AE_INFO,
       "Method reached maximum reentrancy limit (255)"));
  return_ACPI_STATUS(AE_AML_METHOD_LIMIT);
 }




 if (obj_desc->method.method_flags & AML_METHOD_SERIALIZED) {





  if (!obj_desc->method.mutex) {
   status = acpi_ds_create_method_mutex(obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }
  if (walk_state &&
      (walk_state->thread->current_sync_level >
       obj_desc->method.mutex->mutex.sync_level)) {
   ACPI_ERROR((AE_INFO,
        "Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%d)",
        acpi_ut_get_node_name(method_node),
        walk_state->thread->current_sync_level));

   return_ACPI_STATUS(AE_AML_MUTEX_ORDER);
  }





  if (!walk_state ||
      !obj_desc->method.mutex->mutex.thread_id ||
      (walk_state->thread->thread_id !=
       obj_desc->method.mutex->mutex.thread_id)) {




   status =
       acpi_ex_system_wait_mutex(obj_desc->method.mutex->
            mutex.os_mutex,
            ACPI_WAIT_FOREVER);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }



   if (walk_state) {
    obj_desc->method.mutex->mutex.
        original_sync_level =
        walk_state->thread->current_sync_level;

    obj_desc->method.mutex->mutex.thread_id =
        walk_state->thread->thread_id;
    walk_state->thread->current_sync_level =
        obj_desc->method.sync_level;
   } else {
    obj_desc->method.mutex->mutex.
        original_sync_level =
        obj_desc->method.mutex->mutex.sync_level;
   }
  }



  obj_desc->method.mutex->mutex.acquisition_depth++;
 }






 if (!obj_desc->method.owner_id) {
  status = acpi_ut_allocate_owner_id(&obj_desc->method.owner_id);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }
 }





 obj_desc->method.thread_count++;
 return_ACPI_STATUS(status);

      cleanup:


 if (obj_desc->method.mutex) {
  acpi_os_release_mutex(obj_desc->method.mutex->mutex.os_mutex);
 }
 return_ACPI_STATUS(status);
}
