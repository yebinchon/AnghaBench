
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;


 int __pci_read_base (struct pci_dev*,int,struct resource*,int) ;
 int pci_iov_resource_bar (struct pci_dev*,int,int*) ;
 int pci_sriov_enabled ;
 int resource_alignment (struct resource*) ;

int pci_sriov_resource_alignment(struct pci_dev *dev, int resno)
{
 struct resource tmp;
 enum pci_bar_type type;
 int reg = pci_iov_resource_bar(dev, resno, &type);

 if (!pci_sriov_enabled)
  return 0;

 if (!reg)
  return 0;

  __pci_read_base(dev, type, &tmp, reg);
 return resource_alignment(&tmp);
}
