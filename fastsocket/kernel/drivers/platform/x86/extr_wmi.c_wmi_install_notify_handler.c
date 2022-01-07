
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wmi_notify_handler ;
struct wmi_block {void* handler_data; scalar_t__ handler; } ;
typedef int acpi_status ;


 int AE_ALREADY_ACQUIRED ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int find_guid (char const*,struct wmi_block**) ;
 int wmi_method_enable (struct wmi_block*,int) ;

acpi_status wmi_install_notify_handler(const char *guid,
wmi_notify_handler handler, void *data)
{
 struct wmi_block *block;
 acpi_status status;

 if (!guid || !handler)
  return AE_BAD_PARAMETER;

 find_guid(guid, &block);
 if (!block)
  return AE_NOT_EXIST;

 if (block->handler)
  return AE_ALREADY_ACQUIRED;

 block->handler = handler;
 block->handler_data = data;

 status = wmi_method_enable(block, 1);

 return status;
}
