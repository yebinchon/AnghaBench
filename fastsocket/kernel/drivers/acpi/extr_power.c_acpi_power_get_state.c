
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int member_0; char* member_1; } ;
typedef int node_name ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_POWER_RESOURCE_STATE_OFF ;
 int ACPI_POWER_RESOURCE_STATE_ON ;
 int ACPI_SINGLE_NAME ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;

__attribute__((used)) static int acpi_power_get_state(acpi_handle handle, int *state)
{
 acpi_status status = AE_OK;
 unsigned long long sta = 0;
 char node_name[5];
 struct acpi_buffer buffer = { sizeof(node_name), node_name };


 if (!handle || !state)
  return -EINVAL;

 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 *state = (sta & 0x01)?ACPI_POWER_RESOURCE_STATE_ON:
         ACPI_POWER_RESOURCE_STATE_OFF;

 acpi_get_name(handle, ACPI_SINGLE_NAME, &buffer);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Resource [%s] is %s\n",
     node_name,
    *state ? "on" : "off"));

 return 0;
}
