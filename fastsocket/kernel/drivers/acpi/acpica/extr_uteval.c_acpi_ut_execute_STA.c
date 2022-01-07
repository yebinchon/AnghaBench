
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef scalar_t__ u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_BTYPE_INTEGER ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_UINT32_MAX ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 int METHOD_NAME__STA ;
 scalar_t__ acpi_ut_evaluate_object (struct acpi_namespace_node*,int ,int ,union acpi_operand_object**) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (scalar_t__) ;
 int ut_execute_STA ;

acpi_status
acpi_ut_execute_STA(struct acpi_namespace_node *device_node, u32 * flags)
{
 union acpi_operand_object *obj_desc;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_execute_STA);

 status = acpi_ut_evaluate_object(device_node, METHOD_NAME__STA,
      ACPI_BTYPE_INTEGER, &obj_desc);
 if (ACPI_FAILURE(status)) {
  if (AE_NOT_FOUND == status) {
   ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
       "_STA on %4.4s was not found, assuming device is present\n",
       acpi_ut_get_node_name(device_node)));

   *flags = ACPI_UINT32_MAX;
   status = AE_OK;
  }

  return_ACPI_STATUS(status);
 }



 *flags = (u32) obj_desc->integer.value;



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
