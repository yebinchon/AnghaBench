
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
typedef scalar_t__ u8 ;
struct guid_block {scalar_t__ instance_count; int flags; int object_id; } ;
struct wmi_block {int handle; struct guid_block gblock; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 void* ACPI_TYPE_INTEGER ;
 int ACPI_WMI_EVENT ;
 int ACPI_WMI_EXPENSIVE ;
 int ACPI_WMI_METHOD ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_get_handle (int ,char*,int *) ;
 int find_guid (char const*,struct wmi_block**) ;
 int strcpy (char*,char*) ;
 int strncat (char*,int ,int) ;

acpi_status wmi_query_block(const char *guid_string, u8 instance,
struct acpi_buffer *out)
{
 struct guid_block *block = ((void*)0);
 struct wmi_block *wblock = ((void*)0);
 acpi_handle handle, wc_handle;
 acpi_status status, wc_status = AE_ERROR;
 struct acpi_object_list input, wc_input;
 union acpi_object wc_params[1], wq_params[1];
 char method[5];
 char wc_method[5] = "WC";

 if (!guid_string || !out)
  return AE_BAD_PARAMETER;

 if (!find_guid(guid_string, &wblock))
  return AE_ERROR;

 block = &wblock->gblock;
 handle = wblock->handle;

 if (block->instance_count < instance)
  return AE_BAD_PARAMETER;


 if (block->flags & (ACPI_WMI_EVENT | ACPI_WMI_METHOD))
  return AE_ERROR;

 input.count = 1;
 input.pointer = wq_params;
 wq_params[0].type = ACPI_TYPE_INTEGER;
 wq_params[0].integer.value = instance;





 if (block->flags & ACPI_WMI_EXPENSIVE) {
  wc_input.count = 1;
  wc_input.pointer = wc_params;
  wc_params[0].type = ACPI_TYPE_INTEGER;
  wc_params[0].integer.value = 1;

  strncat(wc_method, block->object_id, 2);






  wc_status = acpi_get_handle(handle, wc_method, &wc_handle);
  if (ACPI_SUCCESS(wc_status))
   wc_status = acpi_evaluate_object(handle, wc_method,
    &wc_input, ((void*)0));
 }

 strcpy(method, "WQ");
 strncat(method, block->object_id, 2);

 status = acpi_evaluate_object(handle, method, &input, out);





 if ((block->flags & ACPI_WMI_EXPENSIVE) && ACPI_SUCCESS(wc_status)) {
  wc_params[0].integer.value = 0;
  status = acpi_evaluate_object(handle,
  wc_method, &wc_input, ((void*)0));
 }

 return status;
}
