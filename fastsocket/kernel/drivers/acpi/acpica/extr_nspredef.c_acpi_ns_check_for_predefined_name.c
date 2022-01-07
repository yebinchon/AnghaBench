
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int expected_btypes; scalar_t__* name; } ;
union acpi_predefined_info {TYPE_2__ info; } ;
struct TYPE_3__ {char* ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;


 scalar_t__ ACPI_COMPARE_NAME (char*,scalar_t__*) ;
 int ACPI_RTYPE_PACKAGE ;
 union acpi_predefined_info* predefined_names ;

const union acpi_predefined_info *acpi_ns_check_for_predefined_name(struct
            acpi_namespace_node
            *node)
{
 const union acpi_predefined_info *this_name;



 if (node->name.ascii[0] != '_') {
  return (((void*)0));
 }



 this_name = predefined_names;
 while (this_name->info.name[0]) {
  if (ACPI_COMPARE_NAME(node->name.ascii, this_name->info.name)) {
   return (this_name);
  }





  if (this_name->info.expected_btypes & ACPI_RTYPE_PACKAGE) {
   this_name++;
  }

  this_name++;
 }

 return (((void*)0));
}
