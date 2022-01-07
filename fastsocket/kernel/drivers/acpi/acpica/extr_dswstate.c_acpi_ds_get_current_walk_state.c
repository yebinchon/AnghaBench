
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {int dummy; } ;
struct acpi_thread_state {struct acpi_walk_state* walk_state_list; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ds_get_current_walk_state ;

struct acpi_walk_state *acpi_ds_get_current_walk_state(struct acpi_thread_state
             *thread)
{
 ACPI_FUNCTION_NAME(ds_get_current_walk_state);

 if (!thread) {
  return (((void*)0));
 }

 ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "Current WalkState %p\n",
     thread->walk_state_list));

 return (thread->walk_state_list);
}
