
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int dummy; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;

__attribute__((used)) static int write_acpi_int(acpi_handle handle, const char *method, int val,
     struct acpi_buffer *output)
{
 struct acpi_object_list params;
 union acpi_object in_obj;
 acpi_status status;

 params.count = 1;
 params.pointer = &in_obj;
 in_obj.type = ACPI_TYPE_INTEGER;
 in_obj.integer.value = val;

 status = acpi_evaluate_object(handle, (char *)method, &params, output);
 return (status == AE_OK ? 0 : -1);
}
