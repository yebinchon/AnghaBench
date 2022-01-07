
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct pcmcia_driver {TYPE_1__ drv; } ;


 int driver_unregister (TYPE_1__*) ;
 int ds_dbg (int,char*,int ) ;
 int pcmcia_free_dynids (struct pcmcia_driver*) ;

void pcmcia_unregister_driver(struct pcmcia_driver *driver)
{
 ds_dbg(3, "unregistering driver %s\n", driver->drv.name);
 driver_unregister(&driver->drv);
 pcmcia_free_dynids(driver);
}
