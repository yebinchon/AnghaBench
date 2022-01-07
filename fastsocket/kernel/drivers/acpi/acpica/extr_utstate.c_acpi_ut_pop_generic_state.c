
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_1__ common; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int return_PTR (union acpi_generic_state*) ;
 int ut_pop_generic_state ;

union acpi_generic_state *acpi_ut_pop_generic_state(union acpi_generic_state
          **list_head)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_TRACE(ut_pop_generic_state);



 state = *list_head;
 if (state) {



  *list_head = state->common.next;
 }

 return_PTR(state);
}
