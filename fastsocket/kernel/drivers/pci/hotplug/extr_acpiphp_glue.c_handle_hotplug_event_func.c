
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int _handle_hotplug_event_func ;
 int alloc_acpiphp_hp_work (int ,int ,void*,int ) ;

__attribute__((used)) static void handle_hotplug_event_func(acpi_handle handle, u32 type,
          void *context)
{
 alloc_acpiphp_hp_work(handle, type, context,
         _handle_hotplug_event_func);
}
