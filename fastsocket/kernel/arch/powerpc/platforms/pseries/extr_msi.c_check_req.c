
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {struct device_node* node; } ;
struct pci_dev {int dummy; } ;
struct device_node {int full_name; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOSPC ;
 struct pci_dn* get_pdn (struct pci_dev*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int pr_debug (char*,char*,int) ;

__attribute__((used)) static int check_req(struct pci_dev *pdev, int nvec, char *prop_name)
{
 struct device_node *dn;
 struct pci_dn *pdn;
 const u32 *req_msi;

 pdn = get_pdn(pdev);
 if (!pdn)
  return -ENODEV;

 dn = pdn->node;

 req_msi = of_get_property(dn, prop_name, ((void*)0));
 if (!req_msi) {
  pr_debug("rtas_msi: No %s on %s\n", prop_name, dn->full_name);
  return -ENOENT;
 }

 if (*req_msi < nvec) {
  pr_debug("rtas_msi: %s requests < %d MSIs\n", prop_name, nvec);

  if (*req_msi == 0)
   return -ENOSPC;

  return *req_msi;
 }

 return 0;
}
