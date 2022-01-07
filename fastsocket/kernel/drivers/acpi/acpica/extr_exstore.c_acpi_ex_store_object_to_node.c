
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u8 ;
struct acpi_walk_state {scalar_t__ opcode; int result_obj; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_TYPE_ANY ;







 int AE_OK ;
 scalar_t__ AML_COPY_OP ;
 int acpi_ex_resolve_object (union acpi_operand_object**,int,struct acpi_walk_state*) ;
 int acpi_ex_store_object_to_object (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_write_data_to_field (union acpi_operand_object*,union acpi_operand_object*,int *) ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ns_get_type (struct acpi_namespace_node*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int) ;
 int ex_store_object_to_node ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
        struct acpi_namespace_node *node,
        struct acpi_walk_state *walk_state,
        u8 implicit_conversion)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *target_desc;
 union acpi_operand_object *new_desc;
 acpi_object_type target_type;

 ACPI_FUNCTION_TRACE_PTR(ex_store_object_to_node, source_desc);



 target_type = acpi_ns_get_type(node);
 target_desc = acpi_ns_get_attached_object(node);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Storing %p(%s) into node %p(%s)\n",
     source_desc,
     acpi_ut_get_object_type_name(source_desc), node,
     acpi_ut_get_type_name(target_type)));





 status = acpi_ex_resolve_object(&source_desc, target_type, walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if ((!implicit_conversion) ||
     ((walk_state->opcode == AML_COPY_OP) &&
      (target_type != 129) &&
      (target_type != 131) &&
      (target_type != 130))) {






  target_type = ACPI_TYPE_ANY;
 }



 switch (target_type) {
 case 133:
 case 129:
 case 131:
 case 130:



  status = acpi_ex_write_data_to_field(source_desc, target_desc,
           &walk_state->result_obj);
  break;

 case 132:
 case 128:
 case 134:







  status =
      acpi_ex_store_object_to_object(source_desc, target_desc,
         &new_desc, walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  if (new_desc != target_desc) {
   status =
       acpi_ns_attach_object(node, new_desc,
        new_desc->common.type);

   ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
       "Store %s into %s via Convert/Attach\n",
       acpi_ut_get_object_type_name
       (source_desc),
       acpi_ut_get_object_type_name
       (new_desc)));
  }
  break;

 default:

  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Storing %s (%p) directly into node (%p) with no implicit conversion\n",
      acpi_ut_get_object_type_name(source_desc),
      source_desc, node));



  status = acpi_ns_attach_object(node, source_desc,
            source_desc->common.type);
  break;
 }

 return_ACPI_STATUS(status);
}
