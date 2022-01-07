
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {scalar_t__ pointer; int length; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 int ACPI_FREE (scalar_t__) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_ns_handle_to_pathname (struct acpi_namespace_node*,struct acpi_buffer*) ;
 int acpi_os_printf (char*,...) ;

void
acpi_ns_print_node_pathname(struct acpi_namespace_node *node,
       const char *message)
{
 struct acpi_buffer buffer;
 acpi_status status;

 if (!node) {
  acpi_os_printf("[NULL NAME]");
  return;
 }



 buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;

 status = acpi_ns_handle_to_pathname(node, &buffer);
 if (ACPI_SUCCESS(status)) {
  if (message) {
   acpi_os_printf("%s ", message);
  }

  acpi_os_printf("[%s] (Node %p)", (char *)buffer.pointer, node);
  ACPI_FREE(buffer.pointer);
 }
}
