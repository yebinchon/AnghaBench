
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int tty_drivers; int num; int minor_start; int major; scalar_t__ refcount; } ;


 int EBUSY ;
 int MKDEV (int ,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_mutex ;
 int unregister_chrdev_region (int ,int ) ;

int tty_unregister_driver(struct tty_driver *driver)
{





 unregister_chrdev_region(MKDEV(driver->major, driver->minor_start),
    driver->num);
 mutex_lock(&tty_mutex);
 list_del(&driver->tty_drivers);
 mutex_unlock(&tty_mutex);
 return 0;
}
