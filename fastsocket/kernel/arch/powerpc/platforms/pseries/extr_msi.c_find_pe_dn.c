
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_node {int full_name; } ;


 struct device_node* find_device_pe (struct device_node*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static struct device_node *find_pe_dn(struct pci_dev *dev, int *total)
{
 struct device_node *dn;



 dn = pci_device_to_OF_node(dev);
 if (!dn)
  return ((void*)0);

 dn = find_device_pe(dn);
 if (!dn)
  return ((void*)0);


 dn = of_get_parent(dn);
 if (!dn)
  return ((void*)0);


 *total = 8;
 pr_debug("rtas_msi: using PE dn %s\n", dn->full_name);

 return dn;
}
