
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ class; int node; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_4__ reference; TYPE_3__ string; TYPE_2__ common; TYPE_1__ package; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct acpi_pci_routing_table {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_REFCLASS_NAME ;
 scalar_t__ ACPI_ROUND_UP_TO_64BIT (scalar_t__) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_AML_OPERAND_TYPE ;
 int AE_OK ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ acpi_ns_get_pathname_length (int ) ;
 int return_ACPI_STATUS (int ) ;
 int rs_get_pci_routing_table_length ;

acpi_status
acpi_rs_get_pci_routing_table_length(union acpi_operand_object *package_object,
         acpi_size * buffer_size_needed)
{
 u32 number_of_elements;
 acpi_size temp_size_needed = 0;
 union acpi_operand_object **top_object_list;
 u32 index;
 union acpi_operand_object *package_element;
 union acpi_operand_object **sub_object_list;
 u8 name_found;
 u32 table_index;

 ACPI_FUNCTION_TRACE(rs_get_pci_routing_table_length);

 number_of_elements = package_object->package.count;
 top_object_list = package_object->package.elements;

 for (index = 0; index < number_of_elements; index++) {



  package_element = *top_object_list;



  if (!package_element ||
      (package_element->common.type != ACPI_TYPE_PACKAGE)) {
   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }





  sub_object_list = package_element->package.elements;



  name_found = FALSE;

  for (table_index = 0; table_index < 4 && !name_found;
       table_index++) {
   if (*sub_object_list &&
       ((ACPI_TYPE_STRING ==
         (*sub_object_list)->common.type) ||
        ((ACPI_TYPE_LOCAL_REFERENCE ==
          (*sub_object_list)->common.type) &&
         ((*sub_object_list)->reference.class ==
          ACPI_REFCLASS_NAME)))) {
    name_found = TRUE;
   } else {


    sub_object_list++;
   }
  }

  temp_size_needed += (sizeof(struct acpi_pci_routing_table) - 4);



  if (name_found) {
   if ((*sub_object_list)->common.type == ACPI_TYPE_STRING) {




    temp_size_needed += ((acpi_size)
           (*sub_object_list)->string.
           length + 1);
   } else {
    temp_size_needed +=
        acpi_ns_get_pathname_length((*sub_object_list)->reference.node);
   }
  } else {




   temp_size_needed += sizeof(u32);
  }



  temp_size_needed = ACPI_ROUND_UP_TO_64BIT(temp_size_needed);



  top_object_list++;
 }





 *buffer_size_needed =
     temp_size_needed + sizeof(struct acpi_pci_routing_table);
 return_ACPI_STATUS(AE_OK);
}
