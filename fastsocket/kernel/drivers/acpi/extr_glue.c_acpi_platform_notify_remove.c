
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int acpi_unbind_one (struct device*) ;

__attribute__((used)) static int acpi_platform_notify_remove(struct device *dev)
{
 acpi_unbind_one(dev);
 return 0;
}
