
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* vpd; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* release ) (struct pci_dev*) ;} ;


 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline void pci_vpd_release(struct pci_dev *dev)
{
 if (dev->vpd)
  dev->vpd->ops->release(dev);
}
