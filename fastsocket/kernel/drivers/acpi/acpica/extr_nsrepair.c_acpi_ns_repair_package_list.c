
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
struct acpi_predefined_data {int node_flags; int pathname; int flags; } ;
typedef int acpi_status ;


 int ACPI_OBJECT_REPAIRED ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_package_object (int) ;

acpi_status
acpi_ns_repair_package_list(struct acpi_predefined_data *data,
       union acpi_operand_object **obj_desc_ptr)
{
 union acpi_operand_object *pkg_obj_desc;





 pkg_obj_desc = acpi_ut_create_package_object(1);
 if (!pkg_obj_desc) {
  return (AE_NO_MEMORY);
 }

 pkg_obj_desc->package.elements[0] = *obj_desc_ptr;



 *obj_desc_ptr = pkg_obj_desc;
 data->flags |= ACPI_OBJECT_REPAIRED;

 ACPI_WARN_PREDEFINED((AE_INFO, data->pathname, data->node_flags,
         "Incorrectly formed Package, attempting repair"));

 return (AE_OK);
}
