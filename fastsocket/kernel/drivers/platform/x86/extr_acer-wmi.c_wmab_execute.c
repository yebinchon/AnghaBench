
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmab_args {int dummy; } ;
struct acpi_buffer {int length; int * pointer; } ;
typedef int acpi_status ;


 int AMW0_GUID1 ;
 int wmi_evaluate_method (int ,int,int,struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static acpi_status wmab_execute(struct wmab_args *regbuf,
struct acpi_buffer *result)
{
 struct acpi_buffer input;
 acpi_status status;
 input.length = sizeof(struct wmab_args);
 input.pointer = (u8 *)regbuf;

 status = wmi_evaluate_method(AMW0_GUID1, 1, 1, &input, result);

 return status;
}
