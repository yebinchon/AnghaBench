
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int close_delay; int closing_wait; } ;
struct uart_state {int tlet; struct tty_port port; } ;
struct uart_driver {int nr; struct uart_state* state; int minor; int major; int dev_name; int driver_name; int owner; struct tty_driver* tty_driver; } ;
struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;
struct tty_driver {int flags; struct uart_driver* driver_state; TYPE_1__ init_termios; int subtype; int type; int minor_start; int major; int name; int driver_name; int owner; } ;


 int B9600 ;
 int BUG_ON (struct uart_state*) ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HUPCL ;
 int SERIAL_TYPE_NORMAL ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_REAL_RAW ;
 int TTY_DRIVER_TYPE_SERIAL ;
 struct tty_driver* alloc_tty_driver (int) ;
 int kfree (struct uart_state*) ;
 struct uart_state* kzalloc (int,int ) ;
 int put_tty_driver (struct tty_driver*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tty_port_init (struct tty_port*) ;
 int tty_register_driver (struct tty_driver*) ;
 int tty_set_operations (struct tty_driver*,int *) ;
 TYPE_1__ tty_std_termios ;
 int uart_ops ;
 int uart_tasklet_action ;

int uart_register_driver(struct uart_driver *drv)
{
 struct tty_driver *normal = ((void*)0);
 int i, retval;

 BUG_ON(drv->state);





 drv->state = kzalloc(sizeof(struct uart_state) * drv->nr, GFP_KERNEL);
 retval = -ENOMEM;
 if (!drv->state)
  goto out;

 normal = alloc_tty_driver(drv->nr);
 if (!normal)
  goto out;

 drv->tty_driver = normal;

 normal->owner = drv->owner;
 normal->driver_name = drv->driver_name;
 normal->name = drv->dev_name;
 normal->major = drv->major;
 normal->minor_start = drv->minor;
 normal->type = TTY_DRIVER_TYPE_SERIAL;
 normal->subtype = SERIAL_TYPE_NORMAL;
 normal->init_termios = tty_std_termios;
 normal->init_termios.c_cflag = B9600 | CS8 | CREAD | HUPCL | CLOCAL;
 normal->init_termios.c_ispeed = normal->init_termios.c_ospeed = 9600;
 normal->flags = TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;
 normal->driver_state = drv;
 tty_set_operations(normal, &uart_ops);




 for (i = 0; i < drv->nr; i++) {
  struct uart_state *state = drv->state + i;
  struct tty_port *port = &state->port;

  tty_port_init(port);
  port->close_delay = 500;
  port->closing_wait = 30000;
  tasklet_init(&state->tlet, uart_tasklet_action,
        (unsigned long)state);
 }

 retval = tty_register_driver(normal);
 out:
 if (retval < 0) {
  put_tty_driver(normal);
  kfree(drv->state);
 }
 return retval;
}
