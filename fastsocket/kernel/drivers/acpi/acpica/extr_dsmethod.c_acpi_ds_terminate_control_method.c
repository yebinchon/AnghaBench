
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; int method_flags; int owner_id; TYPE_3__* mutex; scalar_t__ thread_count; } ;
union acpi_operand_object {TYPE_4__ method; } ;
struct acpi_walk_state {int method_node; TYPE_1__* thread; } ;
struct TYPE_6__ {int * thread_id; int os_mutex; int original_sync_level; int acquisition_depth; } ;
struct TYPE_7__ {TYPE_2__ mutex; } ;
struct TYPE_5__ {int current_sync_level; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int AE_INFO ;
 int AML_METHOD_SERIALIZED ;
 int AOPOBJ_MODIFIED_NAMESPACE ;
 int AOPOBJ_MODULE_LEVEL ;
 int acpi_ds_create_method_mutex (union acpi_operand_object*) ;
 int acpi_ds_method_data_delete_all (struct acpi_walk_state*) ;
 int acpi_ns_delete_namespace_by_owner (int ) ;
 int acpi_ns_delete_namespace_subtree (int ) ;
 int acpi_os_release_mutex (int ) ;
 int acpi_ut_release_owner_id (int *) ;
 int ds_terminate_control_method ;
 int return_VOID ;

void
acpi_ds_terminate_control_method(union acpi_operand_object *method_desc,
     struct acpi_walk_state *walk_state)
{

 ACPI_FUNCTION_TRACE_PTR(ds_terminate_control_method, walk_state);



 if (!method_desc) {
  return_VOID;
 }

 if (walk_state) {



  acpi_ds_method_data_delete_all(walk_state);





  if (method_desc->method.mutex) {



   method_desc->method.mutex->mutex.acquisition_depth--;
   if (!method_desc->method.mutex->mutex.acquisition_depth) {
    walk_state->thread->current_sync_level =
        method_desc->method.mutex->mutex.
        original_sync_level;

    acpi_os_release_mutex(method_desc->method.
            mutex->mutex.os_mutex);
    method_desc->method.mutex->mutex.thread_id = ((void*)0);
   }
  }







  if (!(method_desc->method.flags & AOPOBJ_MODULE_LEVEL)) {



   acpi_ns_delete_namespace_subtree(walk_state->
        method_node);





   if (method_desc->method.
       flags & AOPOBJ_MODIFIED_NAMESPACE) {
    acpi_ns_delete_namespace_by_owner(method_desc->
          method.
          owner_id);
   }
  }
 }



 if (method_desc->method.thread_count) {
  method_desc->method.thread_count--;
 } else {
  ACPI_ERROR((AE_INFO, "Invalid zero thread count in method"));
 }



 if (method_desc->method.thread_count) {




  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "*** Completed execution of one thread, %d threads remaining\n",
      method_desc->method.thread_count));
 } else {
  if ((method_desc->method.method_flags & AML_METHOD_SERIALIZED)
      && (!method_desc->method.mutex)) {
   (void)acpi_ds_create_method_mutex(method_desc);
  }



  if (!(method_desc->method.flags & AOPOBJ_MODULE_LEVEL)) {
   acpi_ut_release_owner_id(&method_desc->method.owner_id);
  }
 }

 return_VOID;
}
