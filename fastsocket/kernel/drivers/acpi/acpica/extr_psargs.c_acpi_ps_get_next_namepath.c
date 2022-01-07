
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {char* name; } ;
struct TYPE_16__ {TYPE_7__ value; TYPE_6__* parent; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_8__ common; } ;
struct TYPE_10__ {int param_count; } ;
union acpi_operand_object {TYPE_2__ method; } ;
typedef scalar_t__ u8 ;
struct TYPE_9__ {scalar_t__* aml; } ;
struct acpi_walk_state {scalar_t__ opcode; int arg_count; int parse_flags; TYPE_4__* op; TYPE_1__ parser_state; int scope_info; } ;
struct acpi_parse_state {scalar_t__* aml; } ;
struct acpi_namespace_node {scalar_t__ type; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_13__ {scalar_t__ aml_opcode; } ;
struct TYPE_14__ {TYPE_5__ common; } ;
struct TYPE_11__ {scalar_t__ aml_opcode; } ;
struct TYPE_12__ {TYPE_3__ common; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (char*,scalar_t__) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODE_MASK ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_METHOD ;
 scalar_t__ AE_AML_INTERNAL ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_COND_REF_OF_OP ;
 int AML_INT_METHODCALL_OP ;
 int AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_PACKAGE_OP ;
 scalar_t__ AML_UNLOAD_OP ;
 scalar_t__ AML_VAR_PACKAGE_OP ;
 scalar_t__ acpi_ds_method_error (scalar_t__,struct acpi_walk_state*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 scalar_t__ acpi_ns_lookup (int ,char*,int ,int ,int,int *,struct acpi_namespace_node**) ;
 union acpi_parse_object* acpi_ps_alloc_op (int ) ;
 int acpi_ps_append_arg (union acpi_parse_object*,union acpi_parse_object*) ;
 char* acpi_ps_get_next_namestring (struct acpi_parse_state*) ;
 int acpi_ps_init_op (union acpi_parse_object*,int ) ;
 int ps_get_next_namepath ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ps_get_next_namepath(struct acpi_walk_state *walk_state,
     struct acpi_parse_state *parser_state,
     union acpi_parse_object *arg, u8 possible_method_call)
{
 acpi_status status;
 char *path;
 union acpi_parse_object *name_op;
 union acpi_operand_object *method_desc;
 struct acpi_namespace_node *node;
 u8 *start = parser_state->aml;

 ACPI_FUNCTION_TRACE(ps_get_next_namepath);

 path = acpi_ps_get_next_namestring(parser_state);
 acpi_ps_init_op(arg, AML_INT_NAMEPATH_OP);



 if (!path) {
  arg->common.value.name = path;
  return_ACPI_STATUS(AE_OK);
 }
 status = acpi_ns_lookup(walk_state->scope_info, path,
    ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
    ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
    ((void*)0), &node);





 if (ACPI_SUCCESS(status) &&
     possible_method_call && (node->type == ACPI_TYPE_METHOD)) {
  if (walk_state->opcode == AML_UNLOAD_OP) {




   walk_state->parser_state.aml = start;
   walk_state->arg_count = 1;
   acpi_ps_init_op(arg, AML_INT_METHODCALL_OP);
   return_ACPI_STATUS(AE_OK);
  }



  method_desc = acpi_ns_get_attached_object(node);
  ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
      "Control Method - %p Desc %p Path=%p\n", node,
      method_desc, path));

  name_op = acpi_ps_alloc_op(AML_INT_NAMEPATH_OP);
  if (!name_op) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }



  acpi_ps_init_op(arg, AML_INT_METHODCALL_OP);
  name_op->common.value.name = path;



  name_op->common.node = node;
  acpi_ps_append_arg(arg, name_op);

  if (!method_desc) {
   ACPI_ERROR((AE_INFO,
        "Control Method %p has no attached object",
        node));
   return_ACPI_STATUS(AE_AML_INTERNAL);
  }

  ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
      "Control Method - %p Args %X\n",
      node, method_desc->method.param_count));



  walk_state->arg_count = method_desc->method.param_count;
  return_ACPI_STATUS(AE_OK);
 }





 if (status == AE_NOT_FOUND) {



  if ((walk_state->parse_flags & ACPI_PARSE_MODE_MASK) !=
      ACPI_PARSE_EXECUTE) {
   status = AE_OK;
  }



  else if (walk_state->op->common.aml_opcode ==
    AML_COND_REF_OF_OP) {
   status = AE_OK;
  }






  else if ((arg->common.parent) &&
    ((arg->common.parent->common.aml_opcode ==
      AML_PACKAGE_OP)
     || (arg->common.parent->common.aml_opcode ==
         AML_VAR_PACKAGE_OP))) {
   status = AE_OK;
  }
 }



 if (ACPI_FAILURE(status)) {
  ACPI_ERROR_NAMESPACE(path, status);

  if ((walk_state->parse_flags & ACPI_PARSE_MODE_MASK) ==
      ACPI_PARSE_EXECUTE) {



   status = acpi_ds_method_error(status, walk_state);
  }
 }



 arg->common.value.name = path;
 return_ACPI_STATUS(status);
}
