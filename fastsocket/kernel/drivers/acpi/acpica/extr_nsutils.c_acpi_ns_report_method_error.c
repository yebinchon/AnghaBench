
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NS_NO_UPSEARCH ;
 int acpi_format_exception (int ) ;
 int acpi_ns_get_node (struct acpi_namespace_node*,char const*,int ,struct acpi_namespace_node**) ;
 int acpi_ns_print_node_pathname (struct acpi_namespace_node*,char const*) ;
 int acpi_os_printf (char*,...) ;

void
acpi_ns_report_method_error(const char *module_name,
       u32 line_number,
       const char *message,
       struct acpi_namespace_node *prefix_node,
       const char *path, acpi_status method_status)
{
 acpi_status status;
 struct acpi_namespace_node *node = prefix_node;

 acpi_os_printf("ACPI Error (%s-%04d): ", module_name, line_number);

 if (path) {
  status =
      acpi_ns_get_node(prefix_node, path, ACPI_NS_NO_UPSEARCH,
         &node);
  if (ACPI_FAILURE(status)) {
   acpi_os_printf("[Could not get node by pathname]");
  }
 }

 acpi_ns_print_node_pathname(node, message);
 acpi_os_printf(", %s\n", acpi_format_exception(method_status));
}
