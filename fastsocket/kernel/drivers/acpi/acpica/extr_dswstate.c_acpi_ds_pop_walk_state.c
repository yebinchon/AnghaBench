
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {struct acpi_walk_state* next; } ;
struct acpi_thread_state {struct acpi_walk_state* walk_state_list; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ds_pop_walk_state ;
 int return_PTR (struct acpi_walk_state*) ;

struct acpi_walk_state *acpi_ds_pop_walk_state(struct acpi_thread_state *thread)
{
 struct acpi_walk_state *walk_state;

 ACPI_FUNCTION_TRACE(ds_pop_walk_state);

 walk_state = thread->walk_state_list;

 if (walk_state) {



  thread->walk_state_list = walk_state->next;






 }

 return_PTR(walk_state);
}
