
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int minor_start; int major; } ;


 unsigned int MKDEV (int ,int ) ;
 int device_destroy (int ,unsigned int) ;
 int tty_class ;

void tty_unregister_device(struct tty_driver *driver, unsigned index)
{
 device_destroy(tty_class,
  MKDEV(driver->major, driver->minor_start) + index);
}
