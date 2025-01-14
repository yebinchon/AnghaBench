
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; } ;
struct tty_driver {int flags; char const* driver_name; char const* name; unsigned int num; TYPE_1__ init_termios; int owner; int minor_start; int subtype; int type; int major; int magic; } ;
struct gigaset_driver {unsigned int minors; int have_tty; struct tty_driver* tty; int minor; } ;


 int B9600 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int DEBUG_IF ;
 int GIG_MAJOR ;
 int HUPCL ;
 int SERIAL_TYPE_NORMAL ;
 int THIS_MODULE ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_MAGIC ;
 int TTY_DRIVER_REAL_RAW ;
 int TTY_DRIVER_TYPE_SERIAL ;
 struct tty_driver* alloc_tty_driver (unsigned int) ;
 int gig_dbg (int ,char*) ;
 int if_ops ;
 int pr_err (char*,...) ;
 int put_tty_driver (struct tty_driver*) ;
 int tty_register_driver (struct tty_driver*) ;
 int tty_set_operations (struct tty_driver*,int *) ;
 TYPE_1__ tty_std_termios ;

void gigaset_if_initdriver(struct gigaset_driver *drv, const char *procname,
      const char *devname)
{
 unsigned minors = drv->minors;
 int ret;
 struct tty_driver *tty;

 drv->have_tty = 0;

 if ((drv->tty = alloc_tty_driver(minors)) == ((void*)0))
  goto enomem;
 tty = drv->tty;

 tty->magic = TTY_DRIVER_MAGIC,
 tty->major = GIG_MAJOR,
 tty->type = TTY_DRIVER_TYPE_SERIAL,
 tty->subtype = SERIAL_TYPE_NORMAL,
 tty->flags = TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;

 tty->driver_name = procname;
 tty->name = devname;
 tty->minor_start = drv->minor;
 tty->num = drv->minors;

 tty->owner = THIS_MODULE;

 tty->init_termios = tty_std_termios;
 tty->init_termios.c_cflag = B9600 | CS8 | CREAD | HUPCL | CLOCAL;
 tty_set_operations(tty, &if_ops);

 ret = tty_register_driver(tty);
 if (ret < 0) {
  pr_err("error %d registering tty driver\n", ret);
  goto error;
 }
 gig_dbg(DEBUG_IF, "tty driver initialized");
 drv->have_tty = 1;
 return;

enomem:
 pr_err("out of memory\n");
error:
 if (drv->tty)
  put_tty_driver(drv->tty);
}
