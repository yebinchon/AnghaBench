
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct acpi_buffer {int length; union acpi_object* pointer; } ;
typedef int out_obj ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;

__attribute__((used)) static int read_acpi_int(acpi_handle handle, const char *method, int *val)
{
 struct acpi_buffer output;
 union acpi_object out_obj;
 acpi_status status;

 output.length = sizeof(out_obj);
 output.pointer = &out_obj;

 status = acpi_evaluate_object(handle, (char *)method, ((void*)0), &output);
 *val = out_obj.integer.value;
 return (status == AE_OK) && (out_obj.type == ACPI_TYPE_INTEGER);
}
