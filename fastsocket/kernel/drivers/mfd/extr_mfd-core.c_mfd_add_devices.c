
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct device {int dummy; } ;


 int mfd_add_device (struct device*,int,struct mfd_cell const*,struct resource*,int) ;
 int mfd_remove_devices (struct device*) ;

int mfd_add_devices(struct device *parent, int id,
      const struct mfd_cell *cells, int n_devs,
      struct resource *mem_base,
      int irq_base)
{
 int i;
 int ret = 0;

 for (i = 0; i < n_devs; i++) {
  ret = mfd_add_device(parent, id, cells + i, mem_base, irq_base);
  if (ret)
   break;
 }

 if (ret)
  mfd_remove_devices(parent);

 return ret;
}
