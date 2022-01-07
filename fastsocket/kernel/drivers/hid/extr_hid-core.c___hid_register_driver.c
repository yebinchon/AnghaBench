
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_4__ {char const* mod_name; struct module* owner; int * bus; int name; } ;
struct hid_driver {TYPE_1__ driver; int dyn_lock; int dyn_list; int name; } ;


 int INIT_LIST_HEAD (int *) ;
 int driver_attr_new_id ;
 int driver_create_file (TYPE_1__*,int *) ;
 int driver_register (TYPE_1__*) ;
 int driver_unregister (TYPE_1__*) ;
 int hid_bus_type ;
 int spin_lock_init (int *) ;

int __hid_register_driver(struct hid_driver *hdrv, struct module *owner,
  const char *mod_name)
{
 int ret;

 hdrv->driver.name = hdrv->name;
 hdrv->driver.bus = &hid_bus_type;
 hdrv->driver.owner = owner;
 hdrv->driver.mod_name = mod_name;

 INIT_LIST_HEAD(&hdrv->dyn_list);
 spin_lock_init(&hdrv->dyn_lock);

 ret = driver_register(&hdrv->driver);
 if (ret)
  return ret;

 ret = driver_create_file(&hdrv->driver, &driver_attr_new_id);
 if (ret)
  driver_unregister(&hdrv->driver);

 return ret;
}
