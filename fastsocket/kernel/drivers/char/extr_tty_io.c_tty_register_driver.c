
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {int owner; } ;
struct tty_driver {int flags; int num; int tty_drivers; struct ktermios** termios; struct tty_struct** ttys; TYPE_1__ cdev; int owner; int name; int minor_start; scalar_t__ major; } ;
struct ktermios {int dummy; } ;
typedef int dev_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (scalar_t__,int ) ;
 int TTY_DRIVER_DEVPTS_MEM ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_INSTALLED ;
 int alloc_chrdev_region (int *,int ,int,int ) ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int kfree (void**) ;
 void** kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_tty_register_driver (struct tty_driver*) ;
 int register_chrdev_region (int ,int,int ) ;
 int tty_drivers ;
 int tty_fops ;
 int tty_mutex ;
 int tty_register_device (struct tty_driver*,int,int *) ;
 int unregister_chrdev_region (int ,int) ;

int tty_register_driver(struct tty_driver *driver)
{
 int error;
 int i;
 dev_t dev;
 void **p = ((void*)0);

 if (!(driver->flags & TTY_DRIVER_DEVPTS_MEM) && driver->num) {
  p = kzalloc(driver->num * 2 * sizeof(void *), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
 }

 if (!driver->major) {
  error = alloc_chrdev_region(&dev, driver->minor_start,
      driver->num, driver->name);
  if (!error) {
   driver->major = MAJOR(dev);
   driver->minor_start = MINOR(dev);
  }
 } else {
  dev = MKDEV(driver->major, driver->minor_start);
  error = register_chrdev_region(dev, driver->num, driver->name);
 }
 if (error < 0) {
  kfree(p);
  return error;
 }

 if (p) {
  driver->ttys = (struct tty_struct **)p;
  driver->termios = (struct ktermios **)(p + driver->num);
 } else {
  driver->ttys = ((void*)0);
  driver->termios = ((void*)0);
 }

 cdev_init(&driver->cdev, &tty_fops);
 driver->cdev.owner = driver->owner;
 error = cdev_add(&driver->cdev, dev, driver->num);
 if (error) {
  unregister_chrdev_region(dev, driver->num);
  driver->ttys = ((void*)0);
  driver->termios = ((void*)0);
  kfree(p);
  return error;
 }

 mutex_lock(&tty_mutex);
 list_add(&driver->tty_drivers, &tty_drivers);
 mutex_unlock(&tty_mutex);

 if (!(driver->flags & TTY_DRIVER_DYNAMIC_DEV)) {
  for (i = 0; i < driver->num; i++)
      tty_register_device(driver, i, ((void*)0));
 }
 proc_tty_register_driver(driver);
 driver->flags |= TTY_DRIVER_INSTALLED;
 return 0;
}
