
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;
struct con_driver {int flag; scalar_t__ last; scalar_t__ first; scalar_t__ node; int * dev; int * desc; struct consw const* con; } ;


 int CON_DRIVER_FLAG_MODULE ;
 int ENODEV ;
 int MAX_NR_CON_DRIVER ;
 int MKDEV (int ,scalar_t__) ;
 int acquire_console_sem () ;
 scalar_t__ con_is_bound (struct consw const*) ;
 int device_destroy (int ,int ) ;
 struct con_driver* registered_con_driver ;
 int release_console_sem () ;
 int vtconsole_class ;
 int vtconsole_deinit_device (struct con_driver*) ;

int unregister_con_driver(const struct consw *csw)
{
 int i, retval = -ENODEV;

 acquire_console_sem();


 if (con_is_bound(csw))
  goto err;

 for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
  struct con_driver *con_driver = &registered_con_driver[i];

  if (con_driver->con == csw &&
      con_driver->flag & CON_DRIVER_FLAG_MODULE) {
   vtconsole_deinit_device(con_driver);
   device_destroy(vtconsole_class,
           MKDEV(0, con_driver->node));
   con_driver->con = ((void*)0);
   con_driver->desc = ((void*)0);
   con_driver->dev = ((void*)0);
   con_driver->node = 0;
   con_driver->flag = 0;
   con_driver->first = 0;
   con_driver->last = 0;
   retval = 0;
   break;
  }
 }
err:
 release_console_sem();
 return retval;
}
