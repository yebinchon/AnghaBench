
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef scalar_t__ u32 ;
struct acpi_buffer {void* member_1; scalar_t__ pointer; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int WMID_GUID1 ;
 int kfree (scalar_t__) ;
 int wmi_evaluate_method (int ,int,scalar_t__,struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static acpi_status
WMI_execute_u32(u32 method_id, u32 in, u32 *out)
{
 struct acpi_buffer input = { (acpi_size) sizeof(u32), (void *)(&in) };
 struct acpi_buffer result = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 u32 tmp;
 acpi_status status;

 status = wmi_evaluate_method(WMID_GUID1, 1, method_id, &input, &result);

 if (ACPI_FAILURE(status))
  return status;

 obj = (union acpi_object *) result.pointer;
 if (obj && obj->type == ACPI_TYPE_BUFFER &&
  obj->buffer.length == sizeof(u32)) {
  tmp = *((u32 *) obj->buffer.pointer);
 } else {
  tmp = 0;
 }

 if (out)
  *out = tmp;

 kfree(result.pointer);

 return status;
}
