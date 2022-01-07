
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pointer; int length; } ;
struct TYPE_3__ {scalar_t__ value; } ;
union acpi_object {TYPE_2__ buffer; void* type; TYPE_1__ integer; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct guid_block {int flags; scalar_t__ instance_count; int object_id; } ;
struct wmi_block {int handle; struct guid_block gblock; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int pointer; int length; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 void* ACPI_TYPE_BUFFER ;
 void* ACPI_TYPE_INTEGER ;
 void* ACPI_TYPE_STRING ;
 int ACPI_WMI_METHOD ;
 int ACPI_WMI_STRING ;
 int AE_BAD_DATA ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int find_guid (char const*,struct wmi_block**) ;
 int strncat (char*,int ,int) ;

acpi_status wmi_evaluate_method(const char *guid_string, u8 instance,
u32 method_id, const struct acpi_buffer *in, struct acpi_buffer *out)
{
 struct guid_block *block = ((void*)0);
 struct wmi_block *wblock = ((void*)0);
 acpi_handle handle;
 acpi_status status;
 struct acpi_object_list input;
 union acpi_object params[3];
 char method[5] = "WM";

 if (!find_guid(guid_string, &wblock))
  return AE_ERROR;

 block = &wblock->gblock;
 handle = wblock->handle;

 if (!(block->flags & ACPI_WMI_METHOD))
  return AE_BAD_DATA;

 if (block->instance_count < instance)
  return AE_BAD_PARAMETER;

 input.count = 2;
 input.pointer = params;
 params[0].type = ACPI_TYPE_INTEGER;
 params[0].integer.value = instance;
 params[1].type = ACPI_TYPE_INTEGER;
 params[1].integer.value = method_id;

 if (in) {
  input.count = 3;

  if (block->flags & ACPI_WMI_STRING) {
   params[2].type = ACPI_TYPE_STRING;
  } else {
   params[2].type = ACPI_TYPE_BUFFER;
  }
  params[2].buffer.length = in->length;
  params[2].buffer.pointer = in->pointer;
 }

 strncat(method, block->object_id, 2);

 status = acpi_evaluate_object(handle, method, &input, out);

 return status;
}
