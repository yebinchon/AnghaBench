
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {scalar_t__ type; } ;
typedef int acpi_object_type ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int ns_get_type ;
 int return_UINT32 (int ) ;

acpi_object_type acpi_ns_get_type(struct acpi_namespace_node * node)
{
 ACPI_FUNCTION_TRACE(ns_get_type);

 if (!node) {
  ACPI_WARNING((AE_INFO, "Null Node parameter"));
  return_UINT32(ACPI_TYPE_ANY);
 }

 return_UINT32((acpi_object_type) node->type);
}
