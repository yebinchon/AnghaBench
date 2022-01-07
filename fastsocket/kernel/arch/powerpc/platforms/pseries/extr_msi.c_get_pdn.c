
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_dev {int dev; } ;
struct device_node {int dummy; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int dev_dbg (int *,char*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static struct pci_dn *get_pdn(struct pci_dev *pdev)
{
 struct device_node *dn;
 struct pci_dn *pdn;

 dn = pci_device_to_OF_node(pdev);
 if (!dn) {
  dev_dbg(&pdev->dev, "rtas_msi: No OF device node\n");
  return ((void*)0);
 }

 pdn = PCI_DN(dn);
 if (!pdn) {
  dev_dbg(&pdev->dev, "rtas_msi: No PCI DN\n");
  return ((void*)0);
 }

 return pdn;
}
