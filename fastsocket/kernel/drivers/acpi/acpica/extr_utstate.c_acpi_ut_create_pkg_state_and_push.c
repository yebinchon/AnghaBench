
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_generic_state* acpi_ut_create_pkg_state (void*,void*,int ) ;
 int acpi_ut_push_generic_state (union acpi_generic_state**,union acpi_generic_state*) ;

acpi_status
acpi_ut_create_pkg_state_and_push(void *internal_object,
      void *external_object,
      u16 index,
      union acpi_generic_state **state_list)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_ENTRY();

 state =
     acpi_ut_create_pkg_state(internal_object, external_object, index);
 if (!state) {
  return (AE_NO_MEMORY);
 }

 acpi_ut_push_generic_state(state_list, state);
 return (AE_OK);
}
