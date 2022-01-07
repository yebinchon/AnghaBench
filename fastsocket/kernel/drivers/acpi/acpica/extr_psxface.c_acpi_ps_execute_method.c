
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {TYPE_4__* implicit_return_obj; int method_desc; int parser_state; scalar_t__ return_desc; int parse_flags; } ;
struct acpi_evaluate_info {scalar_t__ return_object; TYPE_7__* obj_desc; int pass_number; TYPE_5__* resolved_node; } ;
typedef int acpi_status ;
struct TYPE_9__ {int flags; int method_flags; int (* implementation ) (struct acpi_walk_state*) ;int aml_length; int aml_start; int owner_id; } ;
struct TYPE_13__ {TYPE_2__ method; } ;
struct TYPE_8__ {int ascii; } ;
struct TYPE_12__ {TYPE_1__ name; } ;
struct TYPE_10__ {scalar_t__ value; } ;
struct TYPE_11__ {TYPE_3__ integer; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DUMP_STACK_ENTRY (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_INTEGER ;
 int AE_CTRL_RETURN_VALUE ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int AML_METHOD_INTERNAL_ONLY ;
 int AOPOBJ_MODULE_LEVEL ;
 int REF_DECREMENT ;
 int REF_INCREMENT ;
 int acpi_ds_begin_method_execution (TYPE_5__*,TYPE_7__*,int *) ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,TYPE_5__*,int ,int ,struct acpi_evaluate_info*,int ) ;
 int acpi_ds_scope_stack_clear (struct acpi_walk_state*) ;
 int acpi_ds_terminate_control_method (int ,struct acpi_walk_state*) ;
 scalar_t__ acpi_gbl_enable_interpreter_slack ;
 int acpi_ps_cleanup_scope (int *) ;
 union acpi_parse_object* acpi_ps_create_scope_op () ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int acpi_ps_start_trace (struct acpi_evaluate_info*) ;
 int acpi_ps_stop_trace (struct acpi_evaluate_info*) ;
 int acpi_ps_update_parameter_list (struct acpi_evaluate_info*,int ) ;
 TYPE_4__* acpi_ut_create_internal_object (int ) ;
 int ps_execute_method ;
 int return_ACPI_STATUS (int ) ;
 int stub1 (struct acpi_walk_state*) ;

acpi_status acpi_ps_execute_method(struct acpi_evaluate_info *info)
{
 acpi_status status;
 union acpi_parse_object *op;
 struct acpi_walk_state *walk_state;

 ACPI_FUNCTION_TRACE(ps_execute_method);



 if (!info || !info->resolved_node) {
  return_ACPI_STATUS(AE_NULL_ENTRY);
 }



 status =
     acpi_ds_begin_method_execution(info->resolved_node, info->obj_desc,
        ((void*)0));
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }




 acpi_ps_update_parameter_list(info, REF_INCREMENT);



 acpi_ps_start_trace(info);




 ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
     "**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\n",
     info->resolved_node->name.ascii, info->resolved_node,
     info->obj_desc));



 op = acpi_ps_create_scope_op();
 if (!op) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }



 info->pass_number = ACPI_IMODE_EXECUTE;
 walk_state =
     acpi_ds_create_walk_state(info->obj_desc->method.owner_id, ((void*)0),
          ((void*)0), ((void*)0));
 if (!walk_state) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }

 status = acpi_ds_init_aml_walk(walk_state, op, info->resolved_node,
           info->obj_desc->method.aml_start,
           info->obj_desc->method.aml_length, info,
           info->pass_number);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }

 if (info->obj_desc->method.flags & AOPOBJ_MODULE_LEVEL) {
  walk_state->parse_flags |= ACPI_PARSE_MODULE_LEVEL;
 }



 if (info->obj_desc->method.method_flags & AML_METHOD_INTERNAL_ONLY) {
  status = info->obj_desc->method.implementation(walk_state);
  info->return_object = walk_state->return_desc;



  acpi_ds_scope_stack_clear(walk_state);
  acpi_ps_cleanup_scope(&walk_state->parser_state);
  acpi_ds_terminate_control_method(walk_state->method_desc,
       walk_state);
  acpi_ds_delete_walk_state(walk_state);
  goto cleanup;
 }





 if (acpi_gbl_enable_interpreter_slack) {
  walk_state->implicit_return_obj =
      acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
  if (!walk_state->implicit_return_obj) {
   status = AE_NO_MEMORY;
   acpi_ds_delete_walk_state(walk_state);
   goto cleanup;
  }

  walk_state->implicit_return_obj->integer.value = 0;
 }



 status = acpi_ps_parse_aml(walk_state);



      cleanup:
 acpi_ps_delete_parse_tree(op);



 acpi_ps_stop_trace(info);



 acpi_ps_update_parameter_list(info, REF_DECREMENT);



 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 if (info->return_object) {
  ACPI_DEBUG_PRINT((ACPI_DB_PARSE, "Method returned ObjDesc=%p\n",
      info->return_object));
  ACPI_DUMP_STACK_ENTRY(info->return_object);

  status = AE_CTRL_RETURN_VALUE;
 }

 return_ACPI_STATUS(status);
}
