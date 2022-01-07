
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int refcount; } ;
struct TYPE_6__ {TYPE_2__ kref; } ;
struct pci_slot {TYPE_3__ kobj; int number; TYPE_1__* bus; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*,int ,scalar_t__) ;
 int down_write (int *) ;
 int kobject_put (TYPE_3__*) ;
 int pci_bus_sem ;
 int up_write (int *) ;

void pci_destroy_slot(struct pci_slot *slot)
{
 dev_dbg(&slot->bus->dev, "dev %02x, dec refcount to %d\n",
  slot->number, atomic_read(&slot->kobj.kref.refcount) - 1);

 down_write(&pci_bus_sem);
 kobject_put(&slot->kobj);
 up_write(&pci_bus_sem);
}
