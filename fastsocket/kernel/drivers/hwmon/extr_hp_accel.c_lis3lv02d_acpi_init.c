
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {struct acpi_device* bus_priv; } ;
struct acpi_device {int handle; } ;


 scalar_t__ AE_OK ;
 int EINVAL ;
 int METHOD_NAME__INI ;
 scalar_t__ acpi_evaluate_object (int ,int ,int *,int *) ;

int lis3lv02d_acpi_init(struct lis3lv02d *lis3)
{
 struct acpi_device *dev = lis3->bus_priv;
 if (acpi_evaluate_object(dev->handle, METHOD_NAME__INI,
     ((void*)0), ((void*)0)) != AE_OK)
  return -EINVAL;

 return 0;
}
