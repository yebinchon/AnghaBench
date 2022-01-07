
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int space_id; } ;
struct TYPE_4__ {int * method_REG; } ;
union acpi_operand_object {TYPE_3__ integer; TYPE_2__ region; TYPE_1__ extra; } ;
typedef int u32 ;
struct acpi_evaluate_info {int * prefix_node; int flags; union acpi_operand_object** parameters; int * pathname; } ;
typedef int acpi_status ;


 struct acpi_evaluate_info* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DEBUG_EXEC (int ) ;
 int ACPI_FREE (struct acpi_evaluate_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IGNORE_RETURN_VALUE ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_METHOD ;
 int AE_NOT_EXIST ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ns_evaluate (struct acpi_evaluate_info*) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_display_init_pathname (int ,int *,int *) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ev_execute_reg_method ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_execute_reg_method(union acpi_operand_object *region_obj, u32 function)
{
 struct acpi_evaluate_info *info;
 union acpi_operand_object *args[3];
 union acpi_operand_object *region_obj2;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_execute_reg_method);

 region_obj2 = acpi_ns_get_secondary_object(region_obj);
 if (!region_obj2) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 if (region_obj2->extra.method_REG == ((void*)0)) {
  return_ACPI_STATUS(AE_OK);
 }



 info = ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_evaluate_info));
 if (!info) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 info->prefix_node = region_obj2->extra.method_REG;
 info->pathname = ((void*)0);
 info->parameters = args;
 info->flags = ACPI_IGNORE_RETURN_VALUE;
 args[0] = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
 if (!args[0]) {
  status = AE_NO_MEMORY;
  goto cleanup1;
 }

 args[1] = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
 if (!args[1]) {
  status = AE_NO_MEMORY;
  goto cleanup2;
 }



 args[0]->integer.value = region_obj->region.space_id;
 args[1]->integer.value = function;
 args[2] = ((void*)0);



 ACPI_DEBUG_EXEC(acpi_ut_display_init_pathname
   (ACPI_TYPE_METHOD, info->prefix_node, ((void*)0)));

 status = acpi_ns_evaluate(info);
 acpi_ut_remove_reference(args[1]);

      cleanup2:
 acpi_ut_remove_reference(args[0]);

      cleanup1:
 ACPI_FREE(info);
 return_ACPI_STATUS(status);
}
