
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int enable_cnt; TYPE_1__* resource; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int flags; } ;


 int DEVICE_COUNT_RESOURCE ;
 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int do_pci_enable_device (struct pci_dev*,int) ;

__attribute__((used)) static int __pci_enable_device_flags(struct pci_dev *dev,
         resource_size_t flags)
{
 int err;
 int i, bars = 0;

 if (atomic_add_return(1, &dev->enable_cnt) > 1)
  return 0;

 for (i = 0; i < DEVICE_COUNT_RESOURCE; i++)
  if (dev->resource[i].flags & flags)
   bars |= (1 << i);

 err = do_pci_enable_device(dev, bars);
 if (err < 0)
  atomic_dec(&dev->enable_cnt);
 return err;
}
