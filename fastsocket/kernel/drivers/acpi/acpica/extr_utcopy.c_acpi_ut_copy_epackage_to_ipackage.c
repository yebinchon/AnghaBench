
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t count; int flags; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ package; } ;
struct TYPE_3__ {size_t count; int * elements; } ;
union acpi_object {TYPE_1__ package; } ;
typedef size_t u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ut_copy_eobject_to_iobject (int *,union acpi_operand_object**) ;
 union acpi_operand_object* acpi_ut_create_package_object (size_t) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_epackage_to_ipackage ;

__attribute__((used)) static acpi_status
acpi_ut_copy_epackage_to_ipackage(union acpi_object *external_object,
      union acpi_operand_object **internal_object)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *package_object;
 union acpi_operand_object **package_elements;
 u32 i;

 ACPI_FUNCTION_TRACE(ut_copy_epackage_to_ipackage);



 package_object =
     acpi_ut_create_package_object(external_object->package.count);
 if (!package_object) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 package_elements = package_object->package.elements;





 for (i = 0; i < external_object->package.count; i++) {
  status =
      acpi_ut_copy_eobject_to_iobject(&external_object->package.
          elements[i],
          &package_elements[i]);
  if (ACPI_FAILURE(status)) {



   package_object->package.count = i;
   package_elements[i] = ((void*)0);
   acpi_ut_remove_reference(package_object);
   return_ACPI_STATUS(status);
  }
 }



 package_object->package.flags |= AOPOBJ_DATA_VALID;

 *internal_object = package_object;
 return_ACPI_STATUS(status);
}
