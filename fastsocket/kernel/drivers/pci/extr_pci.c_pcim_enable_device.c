
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int enabled; } ;
struct pci_dev {int is_managed; } ;


 int ENOMEM ;
 struct pci_devres* get_pci_dr (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 scalar_t__ unlikely (int) ;

int pcim_enable_device(struct pci_dev *pdev)
{
 struct pci_devres *dr;
 int rc;

 dr = get_pci_dr(pdev);
 if (unlikely(!dr))
  return -ENOMEM;
 if (dr->enabled)
  return 0;

 rc = pci_enable_device(pdev);
 if (!rc) {
  pdev->is_managed = 1;
  dr->enabled = 1;
 }
 return rc;
}
