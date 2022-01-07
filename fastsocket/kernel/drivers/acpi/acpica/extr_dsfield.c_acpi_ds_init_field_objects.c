
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aml_opcode; union acpi_parse_object* next; struct acpi_namespace_node* node; } ;
struct TYPE_3__ {int name; } ;
union acpi_parse_object {TYPE_2__ common; TYPE_1__ named; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int parse_flags; int opcode; int scope_info; scalar_t__ method_node; } ;
struct acpi_namespace_node {int dummy; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ERROR_NAMESPACE (char*,scalar_t__) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_TEMPORARY ;
 int ACPI_PARSE_DEFERRED_OP ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_LOCAL_BANK_FIELD ;
 int ACPI_TYPE_LOCAL_INDEX_FIELD ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 scalar_t__ AE_ALREADY_EXISTS ;
 scalar_t__ AE_AML_INTERNAL ;
 scalar_t__ AE_BAD_PARAMETER ;
 scalar_t__ AE_OK ;



 scalar_t__ AML_INT_NAMEDFIELD_OP ;
 scalar_t__ acpi_ns_lookup (int ,char*,int ,int ,int,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 union acpi_parse_object* acpi_ps_get_arg (union acpi_parse_object*,int) ;
 int ds_init_field_objects ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ds_init_field_objects(union acpi_parse_object *op,
      struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_parse_object *arg = ((void*)0);
 struct acpi_namespace_node *node;
 u8 type = 0;
 u32 flags;

 ACPI_FUNCTION_TRACE_PTR(ds_init_field_objects, op);



 if (!(walk_state->parse_flags & ACPI_PARSE_EXECUTE)) {
  if (walk_state->parse_flags & ACPI_PARSE_DEFERRED_OP) {



   return_ACPI_STATUS(AE_OK);
  }

  return_ACPI_STATUS(AE_AML_INTERNAL);
 }





 switch (walk_state->opcode) {
 case 129:
  arg = acpi_ps_get_arg(op, 2);
  type = ACPI_TYPE_LOCAL_REGION_FIELD;
  break;

 case 130:
  arg = acpi_ps_get_arg(op, 4);
  type = ACPI_TYPE_LOCAL_BANK_FIELD;
  break;

 case 128:
  arg = acpi_ps_get_arg(op, 3);
  type = ACPI_TYPE_LOCAL_INDEX_FIELD;
  break;

 default:
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 flags = ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE |
     ACPI_NS_ERROR_IF_FOUND;





 if (walk_state->method_node &&
     !(walk_state->parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
  flags |= ACPI_NS_TEMPORARY;
 }





 while (arg) {




  if (arg->common.aml_opcode == AML_INT_NAMEDFIELD_OP) {
   status = acpi_ns_lookup(walk_state->scope_info,
      (char *)&arg->named.name, type,
      ACPI_IMODE_LOAD_PASS1, flags,
      walk_state, &node);
   if (ACPI_FAILURE(status)) {
    ACPI_ERROR_NAMESPACE((char *)&arg->named.name,
           status);
    if (status != AE_ALREADY_EXISTS) {
     return_ACPI_STATUS(status);
    }



    status = AE_OK;
   }

   arg->common.node = node;
  }



  arg = arg->common.next;
 }

 return_ACPI_STATUS(AE_OK);
}
