
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;

 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_GET_DESCRIPTOR_TYPE (void*) ;
 int FALSE ;
 int TRUE ;
 int acpi_ut_get_descriptor_name (void*) ;
 int ut_valid_internal_object ;

u8 acpi_ut_valid_internal_object(void *object)
{

 ACPI_FUNCTION_NAME(ut_valid_internal_object);



 if (!object) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "**** Null Object Ptr\n"));
  return (FALSE);
 }



 switch (ACPI_GET_DESCRIPTOR_TYPE(object)) {
 case 128:



  return (TRUE);

 default:
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "%p is not not an ACPI operand obj [%s]\n",
      object, acpi_ut_get_descriptor_name(object)));
  break;
 }

 return (FALSE);
}
