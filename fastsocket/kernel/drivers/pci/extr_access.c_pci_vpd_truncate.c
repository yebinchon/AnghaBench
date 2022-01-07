
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* vpd; } ;
struct TYPE_4__ {size_t len; TYPE_1__* attr; } ;
struct TYPE_3__ {size_t size; } ;


 int EINVAL ;

int pci_vpd_truncate(struct pci_dev *dev, size_t size)
{
 if (!dev->vpd)
  return -EINVAL;


 if (size > dev->vpd->len)
  return -EINVAL;

 dev->vpd->len = size;
 if (dev->vpd->attr)
  dev->vpd->attr->size = size;

 return 0;
}
