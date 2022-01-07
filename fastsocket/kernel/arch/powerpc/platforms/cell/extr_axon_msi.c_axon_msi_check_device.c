
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;
 int find_msi_translator (struct pci_dev*) ;

__attribute__((used)) static int axon_msi_check_device(struct pci_dev *dev, int nvec, int type)
{
 if (!find_msi_translator(dev))
  return -ENODEV;

 return 0;
}
