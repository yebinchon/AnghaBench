
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; TYPE_1__* subordinate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int bus_flags; } ;


 int CAP_SYS_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int PCI_BUS_FLAGS_NO_MSI ;
 int capable (int ) ;
 int dev_warn (int *,char*,char*) ;
 scalar_t__ strict_strtoul (char const*,int ,unsigned long*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t
msi_bus_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned long val;

 if (strict_strtoul(buf, 0, &val) < 0)
  return -EINVAL;



 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;



 if (!pdev->subordinate)
  return count;


 if (!(pdev->subordinate->bus_flags & PCI_BUS_FLAGS_NO_MSI) ^
     !!val) {
  pdev->subordinate->bus_flags ^= PCI_BUS_FLAGS_NO_MSI;

  dev_warn(&pdev->dev, "forced subordinate bus to%s support MSI,"
    " bad things could happen\n", val ? "" : " not");
 }

 return count;
}
