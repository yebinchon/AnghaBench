
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EIO ;
 size_t EPERM ;
 int capable (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 size_t pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 size_t strict_strtoul (char const*,int ,unsigned long*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t is_enabled_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned long val;
 ssize_t result = strict_strtoul(buf, 0, &val);

 if (result < 0)
  return result;


 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (!val) {
  if (pci_is_enabled(pdev))
   pci_disable_device(pdev);
  else
   result = -EIO;
 } else
  result = pci_enable_device(pdev);

 return result < 0 ? result : count;
}
