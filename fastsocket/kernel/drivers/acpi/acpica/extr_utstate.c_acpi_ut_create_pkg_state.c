
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_4__ {int num_packages; int index; void* dest_object; union acpi_operand_object* source_object; } ;
struct TYPE_3__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_2__ pkg; TYPE_1__ common; } ;
typedef int u16 ;


 int ACPI_DESC_TYPE_STATE_PACKAGE ;
 int ACPI_FUNCTION_TRACE_PTR (int ,void*) ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int return_PTR (union acpi_generic_state*) ;
 int ut_create_pkg_state ;

union acpi_generic_state *acpi_ut_create_pkg_state(void *internal_object,
         void *external_object,
         u16 index)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_TRACE_PTR(ut_create_pkg_state, internal_object);



 state = acpi_ut_create_generic_state();
 if (!state) {
  return_PTR(((void*)0));
 }



 state->common.descriptor_type = ACPI_DESC_TYPE_STATE_PACKAGE;
 state->pkg.source_object = (union acpi_operand_object *)internal_object;
 state->pkg.dest_object = external_object;
 state->pkg.index = index;
 state->pkg.num_packages = 1;

 return_PTR(state);
}
