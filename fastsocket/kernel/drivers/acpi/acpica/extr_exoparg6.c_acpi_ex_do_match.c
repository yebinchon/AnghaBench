
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u8 ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_FAILURE (int ) ;
 int AML_LEQUAL_OP ;
 int AML_LGREATER_OP ;
 int AML_LLESS_OP ;
 int FALSE ;






 int TRUE ;
 int acpi_ex_do_logical_op (int ,union acpi_operand_object*,union acpi_operand_object*,int *) ;

__attribute__((used)) static u8
acpi_ex_do_match(u32 match_op,
   union acpi_operand_object *package_obj,
   union acpi_operand_object *match_obj)
{
 u8 logical_result = TRUE;
 acpi_status status;
 switch (match_op) {
 case 128:



  break;

 case 133:





  status =
      acpi_ex_do_logical_op(AML_LEQUAL_OP, match_obj, package_obj,
       &logical_result);
  if (ACPI_FAILURE(status)) {
   return (FALSE);
  }
  break;

 case 130:





  status =
      acpi_ex_do_logical_op(AML_LLESS_OP, match_obj, package_obj,
       &logical_result);
  if (ACPI_FAILURE(status)) {
   return (FALSE);
  }
  logical_result = (u8) ! logical_result;
  break;

 case 129:





  status =
      acpi_ex_do_logical_op(AML_LGREATER_OP, match_obj,
       package_obj, &logical_result);
  if (ACPI_FAILURE(status)) {
   return (FALSE);
  }
  break;

 case 132:





  status =
      acpi_ex_do_logical_op(AML_LGREATER_OP, match_obj,
       package_obj, &logical_result);
  if (ACPI_FAILURE(status)) {
   return (FALSE);
  }
  logical_result = (u8) ! logical_result;
  break;

 case 131:





  status =
      acpi_ex_do_logical_op(AML_LLESS_OP, match_obj, package_obj,
       &logical_result);
  if (ACPI_FAILURE(status)) {
   return (FALSE);
  }
  break;

 default:



  return (FALSE);
 }

 return logical_result;
}
