
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ length; scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int ENODEV ;
 int GUID ;


 int kfree (scalar_t__) ;
 int wmi_query_block (int ,int,struct acpi_buffer*) ;

__attribute__((used)) static int get_state(u32 *out, u8 instance)
{
 u32 tmp;
 acpi_status status;
 struct acpi_buffer result = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;

 if (!out)
  return -EINVAL;

 if (instance > 2)
  return -ENODEV;

 status = wmi_query_block(GUID, instance, &result);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 obj = (union acpi_object *) result.pointer;
 if (obj && obj->type == ACPI_TYPE_INTEGER) {
  tmp = obj->integer.value;
 } else {
  tmp = 0;
 }

 if (result.length > 0 && result.pointer)
  kfree(result.pointer);

 switch (instance) {
 case 128:
  *out = (tmp == 3) ? 1 : 0;
  return 0;
 case 129:
  *out = (tmp == 1) ? 0 : 1;
  return 0;
 default:
  return -ENODEV;
 }
}
