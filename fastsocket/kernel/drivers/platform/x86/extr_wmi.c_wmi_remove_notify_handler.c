
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_block {int * handler_data; int * handler; } ;
typedef int acpi_status ;


 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_NULL_ENTRY ;
 int find_guid (char const*,struct wmi_block**) ;
 int wmi_method_enable (struct wmi_block*,int ) ;

acpi_status wmi_remove_notify_handler(const char *guid)
{
 struct wmi_block *block;
 acpi_status status;

 if (!guid)
  return AE_BAD_PARAMETER;

 find_guid(guid, &block);
 if (!block)
  return AE_NOT_EXIST;

 if (!block->handler)
  return AE_NULL_ENTRY;

 status = wmi_method_enable(block, 0);

 block->handler = ((void*)0);
 block->handler_data = ((void*)0);

 return status;
}
