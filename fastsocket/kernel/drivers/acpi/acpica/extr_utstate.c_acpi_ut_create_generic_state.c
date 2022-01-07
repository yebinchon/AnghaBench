
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_1__ common; } ;


 int ACPI_DESC_TYPE_STATE ;
 int ACPI_FUNCTION_ENTRY () ;
 int acpi_gbl_state_cache ;
 union acpi_generic_state* acpi_os_acquire_object (int ) ;
 int memset (union acpi_generic_state*,int ,int) ;

union acpi_generic_state *acpi_ut_create_generic_state(void)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_ENTRY();

 state = acpi_os_acquire_object(acpi_gbl_state_cache);
 if (state) {


  memset(state, 0, sizeof(union acpi_generic_state));
  state->common.descriptor_type = ACPI_DESC_TYPE_STATE;
 }

 return (state);
}
