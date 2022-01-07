
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ pci_match_one_device (struct pci_device_id*,struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int match_pci_dev_by_id(struct device *dev, void *data)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct pci_device_id *id = data;

 if (pci_match_one_device(id, pdev))
  return 1;
 return 0;
}
