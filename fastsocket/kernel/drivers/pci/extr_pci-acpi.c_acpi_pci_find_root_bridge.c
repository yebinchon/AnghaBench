
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int acpi_handle ;


 int ENODEV ;
 int acpi_get_pci_rootbridge_handle (unsigned int,unsigned int) ;
 int dev_name (struct device*) ;
 int sscanf (int ,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int acpi_pci_find_root_bridge(struct device *dev, acpi_handle *handle)
{
 int num;
 unsigned int seg, bus;





 num = sscanf(dev_name(dev), "pci%04x:%02x", &seg, &bus);
 if (num != 2)
  return -ENODEV;
 *handle = acpi_get_pci_rootbridge_handle(seg, bus);
 if (!*handle)
  return -ENODEV;
 return 0;
}
