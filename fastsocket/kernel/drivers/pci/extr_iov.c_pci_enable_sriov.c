
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_physfn; } ;


 int ENODEV ;
 int EPERM ;
 int might_sleep () ;
 int pci_sriov_enabled ;
 int sriov_enable (struct pci_dev*,int) ;

int pci_enable_sriov(struct pci_dev *dev, int nr_virtfn)
{
 might_sleep();

 if (!pci_sriov_enabled)
  return -EPERM;

 if (!dev->is_physfn)
  return -ENODEV;

 return sriov_enable(dev, nr_virtfn);
}
