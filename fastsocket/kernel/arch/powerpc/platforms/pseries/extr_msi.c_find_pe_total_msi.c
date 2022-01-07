
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct device_node {int full_name; } ;


 struct device_node* of_get_next_parent (struct device_node*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 struct device_node* of_node_get (int ) ;
 int pci_device_to_OF_node (struct pci_dev*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static struct device_node *find_pe_total_msi(struct pci_dev *dev, int *total)
{
 struct device_node *dn;
 const u32 *p;

 dn = of_node_get(pci_device_to_OF_node(dev));
 while (dn) {
  p = of_get_property(dn, "ibm,pe-total-#msi", ((void*)0));
  if (p) {
   pr_debug("rtas_msi: found prop on dn %s\n",
    dn->full_name);
   *total = *p;
   return dn;
  }

  dn = of_get_next_parent(dn);
 }

 return ((void*)0);
}
