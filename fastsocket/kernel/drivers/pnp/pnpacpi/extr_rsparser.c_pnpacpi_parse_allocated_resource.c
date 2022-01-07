
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; struct acpi_device* data; } ;
struct acpi_device {int handle; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int EPERM ;
 int METHOD_NAME__CRS ;
 scalar_t__ acpi_walk_resources (int ,int ,int ,struct pnp_dev*) ;
 int dev_err (int *,char*,scalar_t__) ;
 int pnp_dbg (int *,char*) ;
 int pnp_init_resources (struct pnp_dev*) ;
 int pnpacpi_allocated_resource ;

int pnpacpi_parse_allocated_resource(struct pnp_dev *dev)
{
 struct acpi_device *acpi_dev = dev->data;
 acpi_handle handle = acpi_dev->handle;
 acpi_status status;

 pnp_dbg(&dev->dev, "parse allocated resources\n");

 pnp_init_resources(dev);

 status = acpi_walk_resources(handle, METHOD_NAME__CRS,
         pnpacpi_allocated_resource, dev);

 if (ACPI_FAILURE(status)) {
  if (status != AE_NOT_FOUND)
   dev_err(&dev->dev, "can't evaluate _CRS: %d", status);
  return -EPERM;
 }
 return 0;
}
