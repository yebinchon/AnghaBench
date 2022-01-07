
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_walk_state {TYPE_2__* local_variables; TYPE_1__* arguments; } ;
struct TYPE_6__ {size_t integer; } ;
struct TYPE_5__ {int flags; void* type; void* descriptor_type; TYPE_3__ name; } ;
struct TYPE_4__ {int flags; void* type; void* descriptor_type; TYPE_3__ name; } ;


 void* ACPI_DESC_TYPE_NAMED ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 size_t ACPI_METHOD_NUM_LOCALS ;
 int ACPI_MOVE_32_TO_32 (TYPE_3__*,int ) ;
 void* ACPI_TYPE_ANY ;
 int ANOBJ_METHOD_ARG ;
 int ANOBJ_METHOD_LOCAL ;
 int NAMEOF_ARG_NTE ;
 int NAMEOF_LOCAL_NTE ;
 int ds_method_data_init ;
 int return_VOID ;

void acpi_ds_method_data_init(struct acpi_walk_state *walk_state)
{
 u32 i;

 ACPI_FUNCTION_TRACE(ds_method_data_init);



 for (i = 0; i < ACPI_METHOD_NUM_ARGS; i++) {
  ACPI_MOVE_32_TO_32(&walk_state->arguments[i].name,
       NAMEOF_ARG_NTE);
  walk_state->arguments[i].name.integer |= (i << 24);
  walk_state->arguments[i].descriptor_type = ACPI_DESC_TYPE_NAMED;
  walk_state->arguments[i].type = ACPI_TYPE_ANY;
  walk_state->arguments[i].flags = ANOBJ_METHOD_ARG;
 }



 for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++) {
  ACPI_MOVE_32_TO_32(&walk_state->local_variables[i].name,
       NAMEOF_LOCAL_NTE);

  walk_state->local_variables[i].name.integer |= (i << 24);
  walk_state->local_variables[i].descriptor_type =
      ACPI_DESC_TYPE_NAMED;
  walk_state->local_variables[i].type = ACPI_TYPE_ANY;
  walk_state->local_variables[i].flags = ANOBJ_METHOD_LOCAL;
 }

 return_VOID;
}
