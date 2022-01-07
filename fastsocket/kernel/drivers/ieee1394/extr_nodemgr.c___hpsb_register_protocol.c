
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int name; struct module* owner; int * bus; } ;
struct hpsb_protocol_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int ieee1394_bus_type ;
 int nodemgr_create_drv_files (struct hpsb_protocol_driver*) ;

int __hpsb_register_protocol(struct hpsb_protocol_driver *drv,
        struct module *owner)
{
 int error;

 drv->driver.bus = &ieee1394_bus_type;
 drv->driver.owner = owner;
 drv->driver.name = drv->name;


 error = driver_register(&drv->driver);
 if (!error)
  nodemgr_create_drv_files(drv);
 return error;
}
