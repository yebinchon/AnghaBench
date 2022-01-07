
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ aml_opcode; int aml_offset; } ;
struct TYPE_16__ {int * data; void* length; } ;
union acpi_parse_object {TYPE_8__ common; TYPE_7__ named; } ;
typedef int u8 ;
typedef void* u32 ;
struct acpi_parse_state {int * aml; int * aml_end; TYPE_4__* scope; } ;
struct acpi_walk_state {int walk_type; scalar_t__ (* ascending_callback ) (struct acpi_walk_state*) ;scalar_t__ opcode; union acpi_parse_object* op; TYPE_9__* op_info; int arg_count; int arg_types; int aml_offset; int prev_arg_types; union acpi_parse_object* prev_op; TYPE_6__* control_state; struct acpi_parse_state parser_state; int * descending_callback; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_18__ {int flags; int name; } ;
struct TYPE_14__ {scalar_t__ state; } ;
struct TYPE_15__ {TYPE_5__ common; } ;
struct TYPE_12__ {TYPE_2__* op; } ;
struct TYPE_13__ {TYPE_3__ parse_scope; } ;
struct TYPE_10__ {scalar_t__ aml_opcode; } ;
struct TYPE_11__ {TYPE_1__ common; } ;


 scalar_t__ ACPI_CONTROL_PREDICATE_EXECUTING ;
 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_TO_POINTER (int ) ;
 int ACPI_WALK_METHOD_RESTART ;
 scalar_t__ AE_AML_NO_RETURN_VALUE ;
 scalar_t__ AE_BAD_PARAMETER ;
 scalar_t__ AE_CODE_CONTROL ;
 scalar_t__ AE_CODE_MASK ;
 scalar_t__ AE_CTRL_PARSE_CONTINUE ;
 scalar_t__ AE_CTRL_PARSE_PENDING ;
 scalar_t__ AE_CTRL_PENDING ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_BANK_FIELD_OP ;
 int AML_CREATE ;
 scalar_t__ AML_DATA_REGION_OP ;
 scalar_t__ AML_IF_OP ;
 int AML_NAMED ;
 scalar_t__ AML_REGION_OP ;
 scalar_t__ AML_WHILE_OP ;
 int TRUE ;
 scalar_t__ acpi_ds_get_predicate_value (struct acpi_walk_state*,int ) ;
 scalar_t__ acpi_gbl_depth ;
 scalar_t__ acpi_ps_complete_final_op (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ;
 scalar_t__ acpi_ps_complete_op (struct acpi_walk_state*,union acpi_parse_object**,scalar_t__) ;
 scalar_t__ acpi_ps_create_op (struct acpi_walk_state*,int *,union acpi_parse_object**) ;
 scalar_t__ acpi_ps_get_arguments (struct acpi_walk_state*,int *,union acpi_parse_object*) ;
 TYPE_9__* acpi_ps_get_opcode_info (scalar_t__) ;
 scalar_t__ acpi_ps_has_completed_scope (struct acpi_parse_state*) ;
 scalar_t__ acpi_ps_next_parse_state (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ;
 int acpi_ps_pop_scope (struct acpi_parse_state*,union acpi_parse_object**,int *,int *) ;
 scalar_t__ acpi_ps_push_scope (struct acpi_parse_state*,union acpi_parse_object*,int ,int ) ;
 int ps_parse_loop ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (struct acpi_walk_state*) ;

acpi_status acpi_ps_parse_loop(struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_parse_object *op = ((void*)0);
 struct acpi_parse_state *parser_state;
 u8 *aml_op_start = ((void*)0);

 ACPI_FUNCTION_TRACE_PTR(ps_parse_loop, walk_state);

 if (walk_state->descending_callback == ((void*)0)) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 parser_state = &walk_state->parser_state;
 walk_state->arg_types = 0;



 if (walk_state->walk_type & ACPI_WALK_METHOD_RESTART) {



  if (acpi_ps_has_completed_scope(parser_state)) {




   if ((parser_state->scope->parse_scope.op) &&
       ((parser_state->scope->parse_scope.op->common.
         aml_opcode == AML_IF_OP)
        || (parser_state->scope->parse_scope.op->common.
     aml_opcode == AML_WHILE_OP))
       && (walk_state->control_state)
       && (walk_state->control_state->common.state ==
    ACPI_CONTROL_PREDICATE_EXECUTING)) {




    walk_state->op = ((void*)0);
    status =
        acpi_ds_get_predicate_value(walk_state,
        ACPI_TO_POINTER
        (TRUE));
    if (ACPI_FAILURE(status)
        && ((status & AE_CODE_MASK) !=
     AE_CODE_CONTROL)) {
     if (status == AE_AML_NO_RETURN_VALUE) {
      ACPI_EXCEPTION((AE_INFO, status,
        "Invoked method did not return a value"));

     }

     ACPI_EXCEPTION((AE_INFO, status,
       "GetPredicate Failed"));
     return_ACPI_STATUS(status);
    }

    status =
        acpi_ps_next_parse_state(walk_state, op,
            status);
   }

   acpi_ps_pop_scope(parser_state, &op,
       &walk_state->arg_types,
       &walk_state->arg_count);
   ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
       "Popped scope, Op=%p\n", op));
  } else if (walk_state->prev_op) {



   op = walk_state->prev_op;
   walk_state->arg_types = walk_state->prev_arg_types;
  }
 }




 while ((parser_state->aml < parser_state->aml_end) || (op)) {
  aml_op_start = parser_state->aml;
  if (!op) {
   status =
       acpi_ps_create_op(walk_state, aml_op_start, &op);
   if (ACPI_FAILURE(status)) {
    if (status == AE_CTRL_PARSE_CONTINUE) {
     continue;
    }

    if (status == AE_CTRL_PARSE_PENDING) {
     status = AE_OK;
    }

    status =
        acpi_ps_complete_op(walk_state, &op,
       status);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    continue;
   }

   op->common.aml_offset = walk_state->aml_offset;

   if (walk_state->op_info) {
    ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
        "Opcode %4.4X [%s] Op %p Aml %p AmlOffset %5.5X\n",
        (u32) op->common.aml_opcode,
        walk_state->op_info->name, op,
        parser_state->aml,
        op->common.aml_offset));
   }
  }





  walk_state->arg_count = 0;



  if (walk_state->arg_types) {



   status =
       acpi_ps_get_arguments(walk_state, aml_op_start, op);
   if (ACPI_FAILURE(status)) {
    status =
        acpi_ps_complete_op(walk_state, &op,
       status);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    continue;
   }
  }



  if (walk_state->arg_count) {




   status = acpi_ps_push_scope(parser_state, op,
          walk_state->arg_types,
          walk_state->arg_count);
   if (ACPI_FAILURE(status)) {
    status =
        acpi_ps_complete_op(walk_state, &op,
       status);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    continue;
   }

   op = ((void*)0);
   continue;
  }





  walk_state->op_info =
      acpi_ps_get_opcode_info(op->common.aml_opcode);
  if (walk_state->op_info->flags & AML_NAMED) {
   if (acpi_gbl_depth) {
    acpi_gbl_depth--;
   }

   if (op->common.aml_opcode == AML_REGION_OP ||
       op->common.aml_opcode == AML_DATA_REGION_OP) {
    op->named.length =
        (u32) (parser_state->aml - op->named.data);
   }
  }

  if (walk_state->op_info->flags & AML_CREATE) {






   op->named.length =
       (u32) (parser_state->aml - op->named.data);
  }

  if (op->common.aml_opcode == AML_BANK_FIELD_OP) {





   op->named.length =
       (u32) (parser_state->aml - op->named.data);
  }



  if (walk_state->ascending_callback != ((void*)0)) {
   walk_state->op = op;
   walk_state->opcode = op->common.aml_opcode;

   status = walk_state->ascending_callback(walk_state);
   status =
       acpi_ps_next_parse_state(walk_state, op, status);
   if (status == AE_CTRL_PENDING) {
    status = AE_OK;
   }
  }

  status = acpi_ps_complete_op(walk_state, &op, status);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

 }

 status = acpi_ps_complete_final_op(walk_state, op, status);
 return_ACPI_STATUS(status);
}
