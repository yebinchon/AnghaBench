
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aml_opcode; int flags; } ;
union acpi_parse_object {TYPE_1__ common; } ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_PARSEOP_GENERIC ;
 scalar_t__ AML_INT_RETURN_VALUE_OP ;
 int acpi_gbl_ps_node_cache ;
 int acpi_gbl_ps_node_ext_cache ;
 int acpi_os_release_object (int ,union acpi_parse_object*) ;
 int ps_free_op ;

void acpi_ps_free_op(union acpi_parse_object *op)
{
 ACPI_FUNCTION_NAME(ps_free_op);

 if (op->common.aml_opcode == AML_INT_RETURN_VALUE_OP) {
  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS, "Free retval op: %p\n",
      op));
 }

 if (op->common.flags & ACPI_PARSEOP_GENERIC) {
  (void)acpi_os_release_object(acpi_gbl_ps_node_cache, op);
 } else {
  (void)acpi_os_release_object(acpi_gbl_ps_node_ext_cache, op);
 }
}
