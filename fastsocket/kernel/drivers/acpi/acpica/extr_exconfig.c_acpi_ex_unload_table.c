
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int value; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef int u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TABLE_EVENT_UNLOAD ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int FALSE ;
 int acpi_gbl_table_handler (int ,struct acpi_table_header*,int ) ;
 int acpi_gbl_table_handler_context ;
 int acpi_get_table_by_index (int ,struct acpi_table_header**) ;
 int acpi_tb_delete_namespace_by_owner (int ) ;
 int acpi_tb_is_table_loaded (int ) ;
 int acpi_tb_release_owner_id (int ) ;
 int acpi_tb_set_table_loaded_flag (int ,int ) ;
 int ex_unload_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_unload_table(union acpi_operand_object *ddb_handle)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *table_desc = ddb_handle;
 u32 table_index;
 struct acpi_table_header *table;

 ACPI_FUNCTION_TRACE(ex_unload_table);
 if ((!ddb_handle) ||
     (ACPI_GET_DESCRIPTOR_TYPE(ddb_handle) != ACPI_DESC_TYPE_OPERAND) ||
     (ddb_handle->common.type != ACPI_TYPE_LOCAL_REFERENCE) ||
     (!(ddb_handle->common.flags & AOPOBJ_DATA_VALID))) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 table_index = table_desc->reference.value;



 if (!acpi_tb_is_table_loaded(table_index)) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 if (acpi_gbl_table_handler) {
  status = acpi_get_table_by_index(table_index, &table);
  if (ACPI_SUCCESS(status)) {
   (void)acpi_gbl_table_handler(ACPI_TABLE_EVENT_UNLOAD,
           table,
           acpi_gbl_table_handler_context);
  }
 }



 status = acpi_tb_delete_namespace_by_owner(table_index);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 (void)acpi_tb_release_owner_id(table_index);
 acpi_tb_set_table_loaded_flag(table_index, FALSE);





 ddb_handle->common.flags &= ~AOPOBJ_DATA_VALID;
 return_ACPI_STATUS(AE_OK);
}
