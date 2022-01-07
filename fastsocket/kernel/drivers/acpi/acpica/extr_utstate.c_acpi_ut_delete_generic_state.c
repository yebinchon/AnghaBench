
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_generic_state {int dummy; } acpi_generic_state ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_gbl_state_cache ;
 int acpi_os_release_object (int ,union acpi_generic_state*) ;
 int return_VOID ;
 int ut_delete_generic_state ;

void acpi_ut_delete_generic_state(union acpi_generic_state *state)
{
 ACPI_FUNCTION_TRACE(ut_delete_generic_state);



 if (state) {
  (void)acpi_os_release_object(acpi_gbl_state_cache, state);
 }
 return_VOID;
}
