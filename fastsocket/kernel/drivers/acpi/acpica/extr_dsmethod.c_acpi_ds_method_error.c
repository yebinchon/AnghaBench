
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_walk_state {int op; int aml_offset; int opcode; TYPE_2__* method_node; } ;
typedef int acpi_status ;
struct TYPE_3__ {int integer; } ;
struct TYPE_4__ {TYPE_1__ name; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_SUCCESS (int) ;
 int AE_CODE_CONTROL ;
 int acpi_dm_dump_method_info (int,struct acpi_walk_state*,int ) ;
 int acpi_ds_clear_implicit_return (struct acpi_walk_state*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_gbl_exception_handler (int,int ,int ,int ,int *) ;

acpi_status
acpi_ds_method_error(acpi_status status, struct acpi_walk_state *walk_state)
{
 ACPI_FUNCTION_ENTRY();



 if (ACPI_SUCCESS(status) || (status & AE_CODE_CONTROL)) {
  return (status);
 }



 if (acpi_gbl_exception_handler) {



  acpi_ex_exit_interpreter();





  status = acpi_gbl_exception_handler(status,
          walk_state->method_node ?
          walk_state->method_node->
          name.integer : 0,
          walk_state->opcode,
          walk_state->aml_offset,
          ((void*)0));
  acpi_ex_enter_interpreter();
 }

 acpi_ds_clear_implicit_return(walk_state);
 return (status);
}
