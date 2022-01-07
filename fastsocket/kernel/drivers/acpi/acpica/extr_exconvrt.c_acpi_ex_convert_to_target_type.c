
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int opcode; TYPE_2__* op_info; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_object_type ;
struct TYPE_4__ {int runtime_args; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMPLICIT_CONVERT_HEX ;







 scalar_t__ AE_AML_INTERNAL ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TYPE ;





 int GET_CURRENT_ARG_TYPE (int ) ;
 scalar_t__ acpi_ex_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 scalar_t__ acpi_ex_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**,int) ;
 scalar_t__ acpi_ex_convert_to_string (union acpi_operand_object*,union acpi_operand_object**,int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;
 int ex_convert_to_target_type ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ex_convert_to_target_type(acpi_object_type destination_type,
          union acpi_operand_object *source_desc,
          union acpi_operand_object **result_desc,
          struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_convert_to_target_type);



 *result_desc = source_desc;





 switch (GET_CURRENT_ARG_TYPE(walk_state->op_info->runtime_args)) {
 case 129:
 case 132:
 case 131:

  switch (destination_type) {
  case 134:



   break;

  default:


   if (destination_type != source_desc->common.type) {
    ACPI_DEBUG_PRINT((ACPI_DB_INFO,
        "Explicit operator, will store (%s) over existing type (%s)\n",
        acpi_ut_get_object_type_name
        (source_desc),
        acpi_ut_get_type_name
        (destination_type)));
    status = AE_TYPE;
   }
  }
  break;

 case 128:

  switch (destination_type) {
  case 137:
  case 138:
  case 136:
  case 135:




   status =
       acpi_ex_convert_to_integer(source_desc, result_desc,
             16);
   break;

  case 133:




   status =
       acpi_ex_convert_to_string(source_desc, result_desc,
            ACPI_IMPLICIT_CONVERT_HEX);
   break;

  case 139:




   status =
       acpi_ex_convert_to_buffer(source_desc, result_desc);
   break;

  default:
   ACPI_ERROR((AE_INFO,
        "Bad destination type during conversion: %X",
        destination_type));
   status = AE_AML_INTERNAL;
   break;
  }
  break;

 case 130:



  break;

 default:
  ACPI_ERROR((AE_INFO,
       "Unknown Target type ID 0x%X AmlOpcode %X DestType %s",
       GET_CURRENT_ARG_TYPE(walk_state->op_info->
       runtime_args),
       walk_state->opcode,
       acpi_ut_get_type_name(destination_type)));
  status = AE_AML_INTERNAL;
 }







 if (status == AE_TYPE) {
  status = AE_OK;
 }

 return_ACPI_STATUS(status);
}
