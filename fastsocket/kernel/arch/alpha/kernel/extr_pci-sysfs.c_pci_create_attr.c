
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {struct bin_attribute** res_attr_wc; struct bin_attribute** res_attr; TYPE_1__* resource; struct pci_controller* sysdata; } ;
struct pci_controller {unsigned long sparse_mem_base; unsigned long dense_mem_base; unsigned long sparse_io_base; unsigned long dense_io_base; } ;
struct bin_attribute {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int IORESOURCE_MEM ;
 struct bin_attribute* kzalloc (int,int ) ;
 int pci_create_one_attr (struct pci_dev*,int,char*,char*,struct bin_attribute*,unsigned long) ;
 int sparse_mem_mmap_fits (struct pci_dev*,int) ;

__attribute__((used)) static int pci_create_attr(struct pci_dev *pdev, int num)
{

 int retval, nlen1, nlen2 = 0, res_count = 1;
 unsigned long sparse_base, dense_base;
 struct bin_attribute *attr;
 struct pci_controller *hose = pdev->sysdata;
 char *suffix, *attr_name;

 suffix = "";
 nlen1 = 10;

 if (pdev->resource[num].flags & IORESOURCE_MEM) {
  sparse_base = hose->sparse_mem_base;
  dense_base = hose->dense_mem_base;
  if (sparse_base && !sparse_mem_mmap_fits(pdev, num)) {
   sparse_base = 0;
   suffix = "_dense";
   nlen1 = 16;
  }
 } else {
  sparse_base = hose->sparse_io_base;
  dense_base = hose->dense_io_base;
 }

 if (sparse_base) {
  suffix = "_sparse";
  nlen1 = 17;
  if (dense_base) {
   nlen2 = 16;
   res_count = 2;
  }
 }

 attr = kzalloc(sizeof(*attr) * res_count + nlen1 + nlen2, GFP_ATOMIC);
 if (!attr)
  return -ENOMEM;


 attr_name = (char *)(attr + res_count);
 pdev->res_attr[num] = attr;
 retval = pci_create_one_attr(pdev, num, attr_name, suffix, attr,
         sparse_base);
 if (retval || res_count == 1)
  return retval;


 attr_name += nlen1;
 attr++;
 pdev->res_attr_wc[num] = attr;
 return pci_create_one_attr(pdev, num, attr_name, "_dense", attr, 0);
}
