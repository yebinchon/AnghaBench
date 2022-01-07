
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int u32 ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (char const*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SET_DESCRIPTOR_TYPE (union acpi_operand_object*,int ) ;
 int acpi_gbl_operand_cache ;
 union acpi_operand_object* acpi_os_acquire_object (int ) ;
 int memset (union acpi_operand_object*,int ,int) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_allocate_object_desc_dbg ;

void *acpi_ut_allocate_object_desc_dbg(const char *module_name,
           u32 line_number, u32 component_id)
{
 union acpi_operand_object *object;

 ACPI_FUNCTION_TRACE(ut_allocate_object_desc_dbg);

 object = acpi_os_acquire_object(acpi_gbl_operand_cache);
 if (!object) {
  ACPI_ERROR((module_name, line_number,
       "Could not allocate an object descriptor"));

  return_PTR(((void*)0));
 }



 memset(object, 0, sizeof(union acpi_operand_object));
 ACPI_SET_DESCRIPTOR_TYPE(object, ACPI_DESC_TYPE_OPERAND);

 ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS, "%p Size %X\n",
     object, (u32) sizeof(union acpi_operand_object)));

 return_PTR(object);
}
