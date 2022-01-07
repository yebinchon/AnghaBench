
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int EBUSY ;
 scalar_t__ __pci_request_region (struct pci_dev*,int,char const*,int) ;
 int pci_release_region (struct pci_dev*,int) ;

int __pci_request_selected_regions(struct pci_dev *pdev, int bars,
     const char *res_name, int excl)
{
 int i;

 for (i = 0; i < 6; i++)
  if (bars & (1 << i))
   if (__pci_request_region(pdev, i, res_name, excl))
    goto err_out;
 return 0;

err_out:
 while(--i >= 0)
  if (bars & (1 << i))
   pci_release_region(pdev, i);

 return -EBUSY;
}
