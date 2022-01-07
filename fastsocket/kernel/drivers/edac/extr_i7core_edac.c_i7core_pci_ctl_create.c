
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i7core_pvt {int i7core_pci; TYPE_2__* i7core_dev; } ;
struct TYPE_4__ {TYPE_1__** pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EDAC_MOD_STR ;
 int KERN_WARNING ;
 int edac_pci_create_generic_ctl (int *,int ) ;
 int i7core_printk (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void i7core_pci_ctl_create(struct i7core_pvt *pvt)
{
 pvt->i7core_pci = edac_pci_create_generic_ctl(
      &pvt->i7core_dev->pdev[0]->dev,
      EDAC_MOD_STR);
 if (unlikely(!pvt->i7core_pci))
  i7core_printk(KERN_WARNING,
         "Unable to setup PCI error report via EDAC\n");
}
