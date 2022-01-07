
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {struct acpi_namespace_node* deferred_node; int parse_flags; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_PARSE_DEFERRED_OP ;
 int AE_NO_MEMORY ;
 int AML_INT_EVAL_SUBTREE_OP ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,int *,int *,int ,int *,int ) ;
 union acpi_parse_object* acpi_ps_alloc_op (int ) ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int ds_execute_arguments ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ds_execute_arguments(struct acpi_namespace_node *node,
     struct acpi_namespace_node *scope_node,
     u32 aml_length, u8 * aml_start)
{
 acpi_status status;
 union acpi_parse_object *op;
 struct acpi_walk_state *walk_state;

 ACPI_FUNCTION_TRACE(ds_execute_arguments);




 op = acpi_ps_alloc_op(AML_INT_EVAL_SUBTREE_OP);
 if (!op) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 op->common.node = scope_node;



 walk_state = acpi_ds_create_walk_state(0, ((void*)0), ((void*)0), ((void*)0));
 if (!walk_state) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }

 status = acpi_ds_init_aml_walk(walk_state, op, ((void*)0), aml_start,
           aml_length, ((void*)0), ACPI_IMODE_LOAD_PASS1);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }



 walk_state->parse_flags = ACPI_PARSE_DEFERRED_OP;
 walk_state->deferred_node = node;



 status = acpi_ps_parse_aml(walk_state);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }



 op->common.node = node;
 acpi_ps_delete_parse_tree(op);



 op = acpi_ps_alloc_op(AML_INT_EVAL_SUBTREE_OP);
 if (!op) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 op->common.node = scope_node;



 walk_state = acpi_ds_create_walk_state(0, ((void*)0), ((void*)0), ((void*)0));
 if (!walk_state) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }



 status = acpi_ds_init_aml_walk(walk_state, op, ((void*)0), aml_start,
           aml_length, ((void*)0), ACPI_IMODE_EXECUTE);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }



 walk_state->deferred_node = node;
 status = acpi_ps_parse_aml(walk_state);

      cleanup:
 acpi_ps_delete_parse_tree(op);
 return_ACPI_STATUS(status);
}
