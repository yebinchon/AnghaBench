
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int original_sync_level; int * thread_id; int * owner_thread; int os_mutex; scalar_t__ acquisition_depth; union acpi_operand_object* next; int * prev; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
struct acpi_thread_state {int current_sync_level; union acpi_operand_object* acquired_mutex_list; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int acpi_ev_release_global_lock () ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int acpi_os_release_mutex (int ) ;

void acpi_ex_release_all_mutexes(struct acpi_thread_state *thread)
{
 union acpi_operand_object *next = thread->acquired_mutex_list;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_ENTRY();



 while (next) {
  obj_desc = next;
  next = obj_desc->mutex.next;

  obj_desc->mutex.prev = ((void*)0);
  obj_desc->mutex.next = ((void*)0);
  obj_desc->mutex.acquisition_depth = 0;



  if (obj_desc == acpi_gbl_global_lock_mutex) {



   (void)acpi_ev_release_global_lock();
  } else {
   acpi_os_release_mutex(obj_desc->mutex.os_mutex);
  }



  obj_desc->mutex.owner_thread = ((void*)0);
  obj_desc->mutex.thread_id = ((void*)0);



  thread->current_sync_level =
      obj_desc->mutex.original_sync_level;
 }
}
