
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct acpi_namespace_node* node; union acpi_parse_object* parent; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_parse_state {struct acpi_namespace_node* start_node; union acpi_parse_object* start_op; int * pkg_end; int * aml_end; int * aml_start; int * aml; } ;
struct acpi_walk_state {int params; int method_desc; struct acpi_namespace_node* method_node; int walk_type; struct acpi_parse_state parser_state; int * caller_return_desc; int pass_number; int * next_op; } ;
struct acpi_namespace_node {int type; } ;
struct acpi_evaluate_info {int return_object; int parameters; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_NUM_ARGS ;
 int ACPI_TYPE_METHOD ;
 int ACPI_WALK_METHOD ;
 int acpi_ds_init_callbacks (struct acpi_walk_state*,int ) ;
 int acpi_ds_method_data_init_args (int ,int ,struct acpi_walk_state*) ;
 int acpi_ds_scope_stack_push (struct acpi_namespace_node*,int ,struct acpi_walk_state*) ;
 int acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ps_init_scope (struct acpi_parse_state*,union acpi_parse_object*) ;
 int ds_init_aml_walk ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_init_aml_walk(struct acpi_walk_state *walk_state,
        union acpi_parse_object *op,
        struct acpi_namespace_node *method_node,
        u8 * aml_start,
        u32 aml_length,
        struct acpi_evaluate_info *info, u8 pass_number)
{
 acpi_status status;
 struct acpi_parse_state *parser_state = &walk_state->parser_state;
 union acpi_parse_object *extra_op;

 ACPI_FUNCTION_TRACE(ds_init_aml_walk);

 walk_state->parser_state.aml =
     walk_state->parser_state.aml_start = aml_start;
 walk_state->parser_state.aml_end =
     walk_state->parser_state.pkg_end = aml_start + aml_length;



 walk_state->next_op = ((void*)0);
 walk_state->pass_number = pass_number;

 if (info) {
  walk_state->params = info->parameters;
  walk_state->caller_return_desc = &info->return_object;
 }

 status = acpi_ps_init_scope(&walk_state->parser_state, op);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (method_node) {
  walk_state->parser_state.start_node = method_node;
  walk_state->walk_type = ACPI_WALK_METHOD;
  walk_state->method_node = method_node;
  walk_state->method_desc =
      acpi_ns_get_attached_object(method_node);



  status =
      acpi_ds_scope_stack_push(method_node, ACPI_TYPE_METHOD,
          walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }



  status = acpi_ds_method_data_init_args(walk_state->params,
             ACPI_METHOD_NUM_ARGS,
             walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 } else {






  extra_op = parser_state->start_op;
  while (extra_op && !extra_op->common.node) {
   extra_op = extra_op->common.parent;
  }

  if (!extra_op) {
   parser_state->start_node = ((void*)0);
  } else {
   parser_state->start_node = extra_op->common.node;
  }

  if (parser_state->start_node) {



   status =
       acpi_ds_scope_stack_push(parser_state->start_node,
           parser_state->start_node->
           type, walk_state);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }
 }

 status = acpi_ds_init_callbacks(walk_state, pass_number);
 return_ACPI_STATUS(status);
}
