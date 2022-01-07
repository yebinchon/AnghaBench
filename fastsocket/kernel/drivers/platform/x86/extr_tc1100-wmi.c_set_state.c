
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_buffer {int length; int* pointer; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int GUID ;


 int wmi_set_block (int ,int,struct acpi_buffer*) ;

__attribute__((used)) static int set_state(u32 *in, u8 instance)
{
 u32 value;
 acpi_status status;
 struct acpi_buffer input;

 if (!in)
  return -EINVAL;

 if (instance > 2)
  return -ENODEV;

 switch (instance) {
 case 128:
  value = (*in) ? 1 : 2;
  break;
 case 129:
  value = (*in) ? 0 : 1;
  break;
 default:
  return -ENODEV;
 }

 input.length = sizeof(u32);
 input.pointer = &value;

 status = wmi_set_block(GUID, instance, &input);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return 0;
}
