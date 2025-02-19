
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ acpi_handle; } ;
struct device {int kobj; TYPE_1__ archdata; } ;
struct TYPE_9__ {int enabled; } ;
struct TYPE_8__ {scalar_t__ valid; } ;
struct TYPE_10__ {TYPE_4__ state; TYPE_3__ flags; } ;
struct TYPE_7__ {int kobj; } ;
struct acpi_device {TYPE_5__ wakeup; TYPE_2__ dev; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_attach_data (scalar_t__,int ,struct device*) ;
 int acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 int acpi_glue_data_handler ;
 int dev_warn (struct device*,char*) ;
 int device_set_wakeup_capable (struct device*,int) ;
 int device_set_wakeup_enable (struct device*,int ) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int sysfs_create_link (int *,int *,char*) ;

__attribute__((used)) static int acpi_bind_one(struct device *dev, acpi_handle handle)
{
 struct acpi_device *acpi_dev;
 acpi_status status;

 if (dev->archdata.acpi_handle) {
  dev_warn(dev, "Drivers changed 'acpi_handle'\n");
  return -EINVAL;
 }
 get_device(dev);
 status = acpi_attach_data(handle, acpi_glue_data_handler, dev);
 if (ACPI_FAILURE(status)) {
  put_device(dev);
  return -EINVAL;
 }
 dev->archdata.acpi_handle = handle;

 status = acpi_bus_get_device(handle, &acpi_dev);
 if (!ACPI_FAILURE(status)) {
  int ret;

  ret = sysfs_create_link(&dev->kobj, &acpi_dev->dev.kobj,
    "firmware_node");
  ret = sysfs_create_link(&acpi_dev->dev.kobj, &dev->kobj,
    "physical_node");
  if (acpi_dev->wakeup.flags.valid) {
   device_set_wakeup_capable(dev, 1);
   device_set_wakeup_enable(dev,
      acpi_dev->wakeup.state.enabled);
  }
 }

 return 0;
}
