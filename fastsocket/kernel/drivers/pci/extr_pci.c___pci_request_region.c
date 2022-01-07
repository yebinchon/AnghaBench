
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int region_mask; } ;
struct pci_dev {int * resource; int dev; } ;


 int EBUSY ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int __request_mem_region (int ,scalar_t__,char const*,int) ;
 int dev_warn (int *,char*,int,int *) ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int request_region (int ,scalar_t__,char const*) ;

__attribute__((used)) static int __pci_request_region(struct pci_dev *pdev, int bar, const char *res_name,
         int exclusive)
{
 struct pci_devres *dr;

 if (pci_resource_len(pdev, bar) == 0)
  return 0;

 if (pci_resource_flags(pdev, bar) & IORESOURCE_IO) {
  if (!request_region(pci_resource_start(pdev, bar),
       pci_resource_len(pdev, bar), res_name))
   goto err_out;
 }
 else if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM) {
  if (!__request_mem_region(pci_resource_start(pdev, bar),
     pci_resource_len(pdev, bar), res_name,
     exclusive))
   goto err_out;
 }

 dr = find_pci_dr(pdev);
 if (dr)
  dr->region_mask |= 1 << bar;

 return 0;

err_out:
 dev_warn(&pdev->dev, "BAR %d: can't reserve %pR\n", bar,
   &pdev->resource[bar]);
 return -EBUSY;
}
