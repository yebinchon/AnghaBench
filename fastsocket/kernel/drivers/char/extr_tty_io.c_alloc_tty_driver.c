
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int num; int magic; int kref; } ;


 int GFP_KERNEL ;
 int TTY_DRIVER_MAGIC ;
 int kref_init (int *) ;
 struct tty_driver* kzalloc (int,int ) ;

struct tty_driver *alloc_tty_driver(int lines)
{
 struct tty_driver *driver;

 driver = kzalloc(sizeof(struct tty_driver), GFP_KERNEL);
 if (driver) {
  kref_init(&driver->kref);
  driver->magic = TTY_DRIVER_MAGIC;
  driver->num = lines;

 }
 return driver;
}
