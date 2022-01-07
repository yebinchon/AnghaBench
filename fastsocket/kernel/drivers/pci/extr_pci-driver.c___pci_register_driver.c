
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* mod_name; struct module* owner; int * bus; int name; } ;
struct TYPE_4__ {int list; int lock; } ;
struct pci_driver {TYPE_2__ driver; TYPE_1__ dynids; int name; } ;
struct module {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int driver_register (TYPE_2__*) ;
 int driver_unregister (TYPE_2__*) ;
 int pci_bus_type ;
 int pci_create_newid_file (struct pci_driver*) ;
 int pci_create_removeid_file (struct pci_driver*) ;
 int pci_remove_newid_file (struct pci_driver*) ;
 int spin_lock_init (int *) ;

int __pci_register_driver(struct pci_driver *drv, struct module *owner,
     const char *mod_name)
{
 int error;


 drv->driver.name = drv->name;
 drv->driver.bus = &pci_bus_type;
 drv->driver.owner = owner;
 drv->driver.mod_name = mod_name;

 spin_lock_init(&drv->dynids.lock);
 INIT_LIST_HEAD(&drv->dynids.list);


 error = driver_register(&drv->driver);
 if (error)
  goto out;

 error = pci_create_newid_file(drv);
 if (error)
  goto out_newid;

 error = pci_create_removeid_file(drv);
 if (error)
  goto out_removeid;
out:
 return error;

out_removeid:
 pci_remove_newid_file(drv);
out_newid:
 driver_unregister(&drv->driver);
 goto out;
}
