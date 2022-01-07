
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_ec {int dummy; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef int node_name ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_SINGLE_NAME ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_ec_add_query_handler (struct acpi_ec*,int,int ,int *,int *) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static acpi_status
acpi_ec_register_query_methods(acpi_handle handle, u32 level,
          void *context, void **return_value)
{
 char node_name[5];
 struct acpi_buffer buffer = { sizeof(node_name), node_name };
 struct acpi_ec *ec = context;
 int value = 0;
 acpi_status status;

 status = acpi_get_name(handle, ACPI_SINGLE_NAME, &buffer);

 if (ACPI_SUCCESS(status) && sscanf(node_name, "_Q%x", &value) == 1) {
  acpi_ec_add_query_handler(ec, value, handle, ((void*)0), ((void*)0));
 }
 return AE_OK;
}
