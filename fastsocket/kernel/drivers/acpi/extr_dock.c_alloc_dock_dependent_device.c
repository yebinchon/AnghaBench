
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_dependent_device {int hotplug_list; int list; int handle; } ;
typedef int acpi_handle ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dock_dependent_device* kzalloc (int,int ) ;

__attribute__((used)) static struct dock_dependent_device *
alloc_dock_dependent_device(acpi_handle handle)
{
 struct dock_dependent_device *dd;

 dd = kzalloc(sizeof(*dd), GFP_KERNEL);
 if (dd) {
  dd->handle = handle;
  INIT_LIST_HEAD(&dd->list);
  INIT_LIST_HEAD(&dd->hotplug_list);
 }
 return dd;
}
