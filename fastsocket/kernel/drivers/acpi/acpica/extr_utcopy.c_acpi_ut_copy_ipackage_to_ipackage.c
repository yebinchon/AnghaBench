
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int elements; scalar_t__ count; } ;
struct TYPE_3__ {int flags; int type; } ;
union acpi_operand_object {TYPE_2__ package; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ut_copy_ielement_to_ielement ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int acpi_ut_walk_package_tree (union acpi_operand_object*,union acpi_operand_object*,int ,struct acpi_walk_state*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_ipackage_to_ipackage ;

__attribute__((used)) static acpi_status
acpi_ut_copy_ipackage_to_ipackage(union acpi_operand_object *source_obj,
      union acpi_operand_object *dest_obj,
      struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ut_copy_ipackage_to_ipackage);

 dest_obj->common.type = source_obj->common.type;
 dest_obj->common.flags = source_obj->common.flags;
 dest_obj->package.count = source_obj->package.count;




 dest_obj->package.elements = ACPI_ALLOCATE_ZEROED(((acpi_size)
          source_obj->package.
          count +
          1) * sizeof(void *));
 if (!dest_obj->package.elements) {
  ACPI_ERROR((AE_INFO, "Package allocation failure"));
  return_ACPI_STATUS(AE_NO_MEMORY);
 }





 status = acpi_ut_walk_package_tree(source_obj, dest_obj,
        acpi_ut_copy_ielement_to_ielement,
        walk_state);
 if (ACPI_FAILURE(status)) {



  acpi_ut_remove_reference(dest_obj);
 }

 return_ACPI_STATUS(status);
}
