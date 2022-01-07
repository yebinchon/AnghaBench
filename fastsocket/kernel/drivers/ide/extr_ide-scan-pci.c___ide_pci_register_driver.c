
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; } ;
struct pci_driver {int node; TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int __pci_register_driver (struct pci_driver*,struct module*,char const*) ;
 int ide_pci_drivers ;
 int list_add_tail (int *,int *) ;
 int pre_init ;

int __ide_pci_register_driver(struct pci_driver *driver, struct module *module,
         const char *mod_name)
{
 if (!pre_init)
  return __pci_register_driver(driver, module, mod_name);
 driver->driver.owner = module;
 list_add_tail(&driver->node, &ide_pci_drivers);
 return 0;
}
