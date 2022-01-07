
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int * ops; int len; } ;
struct pci_vpd_pci22 {int busy; TYPE_1__ base; scalar_t__ cap; int lock; } ;
struct pci_dev {TYPE_1__* vpd; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCI_CAP_ID_VPD ;
 int PCI_VPD_PCI22_SIZE ;
 struct pci_vpd_pci22* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_vpd_pci22_ops ;

int pci_vpd_pci22_init(struct pci_dev *dev)
{
 struct pci_vpd_pci22 *vpd;
 u8 cap;

 cap = pci_find_capability(dev, PCI_CAP_ID_VPD);
 if (!cap)
  return -ENODEV;
 vpd = kzalloc(sizeof(*vpd), GFP_ATOMIC);
 if (!vpd)
  return -ENOMEM;

 vpd->base.len = PCI_VPD_PCI22_SIZE;
 vpd->base.ops = &pci_vpd_pci22_ops;
 mutex_init(&vpd->lock);
 vpd->cap = cap;
 vpd->busy = 0;
 dev->vpd = &vpd->base;
 return 0;
}
