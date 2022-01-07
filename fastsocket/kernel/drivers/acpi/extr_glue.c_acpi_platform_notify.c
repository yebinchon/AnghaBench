
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int acpi_handle; } ;
struct device {TYPE_1__ archdata; int bus; int parent; } ;
struct acpi_bus_type {int (* find_device ) (struct device*,int *) ;} ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FULL_PATHNAME ;
 int DBG (char*,int ,...) ;
 int EINVAL ;
 int acpi_bind_one (struct device*,int ) ;
 int acpi_find_bridge_device (struct device*,int *) ;
 struct acpi_bus_type* acpi_get_bus_type (int ) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int dev_name (struct device*) ;
 int kfree (scalar_t__) ;
 int stub1 (struct device*,int *) ;

__attribute__((used)) static int acpi_platform_notify(struct device *dev)
{
 struct acpi_bus_type *type;
 acpi_handle handle;
 int ret = -EINVAL;

 if (!dev->bus || !dev->parent) {

  ret = acpi_find_bridge_device(dev, &handle);
  goto end;
 }
 type = acpi_get_bus_type(dev->bus);
 if (!type) {
  DBG("No ACPI bus support for %s\n", dev_name(dev));
  ret = -EINVAL;
  goto end;
 }
 if ((ret = type->find_device(dev, &handle)) != 0)
  DBG("Can't get handler for %s\n", dev_name(dev));
      end:
 if (!ret)
  acpi_bind_one(dev, handle);
 return ret;
}
