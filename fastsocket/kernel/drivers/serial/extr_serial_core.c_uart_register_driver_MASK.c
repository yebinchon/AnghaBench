#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int close_delay; int closing_wait; } ;
struct uart_state {int /*<<< orphan*/  tlet; struct tty_port port; } ;
struct uart_driver {int nr; struct uart_state* state; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  owner; struct tty_driver* tty_driver; } ;
struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;
struct tty_driver {int flags; struct uart_driver* driver_state; TYPE_1__ init_termios; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  major; int /*<<< orphan*/  name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int B9600 ; 
 int /*<<< orphan*/  FUNC0 (struct uart_state*) ; 
 int CLOCAL ; 
 int CREAD ; 
 int CS8 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HUPCL ; 
 int /*<<< orphan*/  SERIAL_TYPE_NORMAL ; 
 int TTY_DRIVER_DYNAMIC_DEV ; 
 int TTY_DRIVER_REAL_RAW ; 
 int /*<<< orphan*/  TTY_DRIVER_TYPE_SERIAL ; 
 struct tty_driver* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_state*) ; 
 struct uart_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*) ; 
 int FUNC7 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_driver*,int /*<<< orphan*/ *) ; 
 TYPE_1__ tty_std_termios ; 
 int /*<<< orphan*/  uart_ops ; 
 int /*<<< orphan*/  uart_tasklet_action ; 

int FUNC9(struct uart_driver *drv)
{
	struct tty_driver *normal = NULL;
	int i, retval;

	FUNC0(drv->state);

	/*
	 * Maybe we should be using a slab cache for this, especially if
	 * we have a large number of ports to handle.
	 */
	drv->state = FUNC3(sizeof(struct uart_state) * drv->nr, GFP_KERNEL);
	retval = -ENOMEM;
	if (!drv->state)
		goto out;

	normal  = FUNC1(drv->nr);
	if (!normal)
		goto out;

	drv->tty_driver = normal;

	normal->owner		= drv->owner;
	normal->driver_name	= drv->driver_name;
	normal->name		= drv->dev_name;
	normal->major		= drv->major;
	normal->minor_start	= drv->minor;
	normal->type		= TTY_DRIVER_TYPE_SERIAL;
	normal->subtype		= SERIAL_TYPE_NORMAL;
	normal->init_termios	= tty_std_termios;
	normal->init_termios.c_cflag = B9600 | CS8 | CREAD | HUPCL | CLOCAL;
	normal->init_termios.c_ispeed = normal->init_termios.c_ospeed = 9600;
	normal->flags		= TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;
	normal->driver_state    = drv;
	FUNC8(normal, &uart_ops);

	/*
	 * Initialise the UART state(s).
	 */
	for (i = 0; i < drv->nr; i++) {
		struct uart_state *state = drv->state + i;
		struct tty_port *port = &state->port;

		FUNC6(port);
		port->close_delay     = 500;	/* .5 seconds */
		port->closing_wait    = 30000;	/* 30 seconds */
		FUNC5(&state->tlet, uart_tasklet_action,
			     (unsigned long)state);
	}

	retval = FUNC7(normal);
 out:
	if (retval < 0) {
		FUNC4(normal);
		FUNC2(drv->state);
	}
	return retval;
}