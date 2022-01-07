
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_table_header {int length; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_METHOD ;
 int AE_BAD_HEADER ;
 int AE_NO_MEMORY ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,int *,int *,int,int *,int ) ;
 int acpi_ds_scope_stack_push (struct acpi_namespace_node*,int ,struct acpi_walk_state*) ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_get_table_by_index (int,struct acpi_table_header**) ;
 union acpi_parse_object* acpi_ps_create_scope_op () ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int acpi_tb_get_owner_id (int,int *) ;
 int ns_one_complete_parse ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_one_complete_parse(u32 pass_number,
      u32 table_index,
      struct acpi_namespace_node *start_node)
{
 union acpi_parse_object *parse_root;
 acpi_status status;
       u32 aml_length;
 u8 *aml_start;
 struct acpi_walk_state *walk_state;
 struct acpi_table_header *table;
 acpi_owner_id owner_id;

 ACPI_FUNCTION_TRACE(ns_one_complete_parse);

 status = acpi_tb_get_owner_id(table_index, &owner_id);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 parse_root = acpi_ps_create_scope_op();
 if (!parse_root) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 walk_state = acpi_ds_create_walk_state(owner_id, ((void*)0), ((void*)0), ((void*)0));
 if (!walk_state) {
  acpi_ps_free_op(parse_root);
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 status = acpi_get_table_by_index(table_index, &table);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  acpi_ps_free_op(parse_root);
  return_ACPI_STATUS(status);
 }



 if (table->length < sizeof(struct acpi_table_header)) {
  status = AE_BAD_HEADER;
 } else {
  aml_start = (u8 *) table + sizeof(struct acpi_table_header);
  aml_length = table->length - sizeof(struct acpi_table_header);
  status = acpi_ds_init_aml_walk(walk_state, parse_root, ((void*)0),
            aml_start, aml_length, ((void*)0),
            (u8) pass_number);
 }

 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }



 if (start_node && start_node != acpi_gbl_root_node) {
  status =
      acpi_ds_scope_stack_push(start_node, ACPI_TYPE_METHOD,
          walk_state);
  if (ACPI_FAILURE(status)) {
   acpi_ds_delete_walk_state(walk_state);
   goto cleanup;
  }
 }



 ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "*PARSE* pass %d parse\n",
     (unsigned)pass_number));
 status = acpi_ps_parse_aml(walk_state);

      cleanup:
 acpi_ps_delete_parse_tree(parse_root);
 return_ACPI_STATUS(status);
}
