
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; int owner; int * bus; } ;
struct TYPE_4__ {int list; int lock; } ;
struct pcmcia_driver {TYPE_2__ drv; TYPE_1__ dynids; int owner; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int driver_register (TYPE_2__*) ;
 int driver_unregister (TYPE_2__*) ;
 int ds_dbg (int,char*,int ) ;
 int pcmcia_bus_type ;
 int pcmcia_check_driver (struct pcmcia_driver*) ;
 int pcmcia_create_newid_file (struct pcmcia_driver*) ;
 int spin_lock_init (int *) ;

int pcmcia_register_driver(struct pcmcia_driver *driver)
{
 int error;

 if (!driver)
  return -EINVAL;

 pcmcia_check_driver(driver);


 driver->drv.bus = &pcmcia_bus_type;
 driver->drv.owner = driver->owner;
 spin_lock_init(&driver->dynids.lock);
 INIT_LIST_HEAD(&driver->dynids.list);

 ds_dbg(3, "registering driver %s\n", driver->drv.name);

 error = driver_register(&driver->drv);
 if (error < 0)
  return error;

 error = pcmcia_create_newid_file(driver);
 if (error)
  driver_unregister(&driver->drv);

 return error;
}
