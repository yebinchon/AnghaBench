
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object* mutex; } ;
union acpi_operand_object {TYPE_1__ method; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int dummy; } ;


 struct acpi_evaluate_info* ACPI_ALLOCATE (int) ;
 int ACPI_FREE (struct acpi_evaluate_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INFO (int ) ;
 int AE_INFO ;
 union acpi_operand_object* acpi_gbl_module_code_list ;
 int acpi_ns_exec_module_code (union acpi_operand_object*,struct acpi_evaluate_info*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_exec_module_code_list ;
 int return_VOID ;

void acpi_ns_exec_module_code_list(void)
{
 union acpi_operand_object *prev;
 union acpi_operand_object *next;
 struct acpi_evaluate_info *info;
 u32 method_count = 0;

 ACPI_FUNCTION_TRACE(ns_exec_module_code_list);



 next = acpi_gbl_module_code_list;
 if (!next) {
  return_VOID;
 }



 info = ACPI_ALLOCATE(sizeof(struct acpi_evaluate_info));
 if (!info) {
  return_VOID;
 }



 while (next) {
  prev = next;
  next = next->method.mutex;



  prev->method.mutex = ((void*)0);
  acpi_ns_exec_module_code(prev, info);
  method_count++;



  acpi_ut_remove_reference(prev);
 }

 ACPI_INFO((AE_INFO,
     "Executed %u blocks of module-level executable AML code",
     method_count));

 ACPI_FREE(info);
 acpi_gbl_module_code_list = ((void*)0);
 return_VOID;
}
