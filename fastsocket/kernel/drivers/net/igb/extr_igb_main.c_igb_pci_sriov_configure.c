
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int igb_pci_disable_sriov (struct pci_dev*) ;
 int igb_pci_enable_sriov (struct pci_dev*,int) ;

__attribute__((used)) static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs)
{






 return 0;
}
