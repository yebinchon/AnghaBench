
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pci_disable_link_state (struct pci_dev*,int,int) ;

void pci_disable_link_state(struct pci_dev *pdev, int state)
{
 __pci_disable_link_state(pdev, state, 1);
}
