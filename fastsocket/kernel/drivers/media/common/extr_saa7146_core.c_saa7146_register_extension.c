
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remove; int probe; int id_table; int name; } ;
struct saa7146_extension {TYPE_1__ driver; int name; int pci_tbl; } ;


 int DEB_EE (char*) ;
 int pci_register_driver (TYPE_1__*) ;
 int printk (char*,int ) ;
 int saa7146_init_one ;
 int saa7146_remove_one ;

int saa7146_register_extension(struct saa7146_extension* ext)
{
 DEB_EE(("ext:%p\n",ext));

 ext->driver.name = ext->name;
 ext->driver.id_table = ext->pci_tbl;
 ext->driver.probe = saa7146_init_one;
 ext->driver.remove = saa7146_remove_one;

 printk("saa7146: register extension '%s'.\n",ext->name);
 return pci_register_driver(&ext->driver);
}
