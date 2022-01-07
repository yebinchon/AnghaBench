
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct guid_block {int notify_id; } ;
struct wmi_block {int handle; struct guid_block gblock; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_INTEGER ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static acpi_status wmi_method_enable(struct wmi_block *wblock, int enable)
{
 struct guid_block *block = ((void*)0);
 char method[5];
 struct acpi_object_list input;
 union acpi_object params[1];
 acpi_status status;
 acpi_handle handle;

 block = &wblock->gblock;
 handle = wblock->handle;

 if (!block)
  return AE_NOT_EXIST;

 input.count = 1;
 input.pointer = params;
 params[0].type = ACPI_TYPE_INTEGER;
 params[0].integer.value = enable;

 snprintf(method, 5, "WE%02X", block->notify_id);
 status = acpi_evaluate_object(handle, method, &input, ((void*)0));

 if (status != AE_OK && status != AE_NOT_FOUND)
  return status;
 else
  return AE_OK;
}
