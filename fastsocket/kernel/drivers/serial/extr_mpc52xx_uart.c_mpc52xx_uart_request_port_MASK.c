#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; } ;
struct mpc52xx_psc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC3(struct uart_port *port)
{
	int err;

	if (port->flags & UPF_IOREMAP) /* Need to remap ? */
		port->membase = FUNC0(port->mapbase,
					sizeof(struct mpc52xx_psc));

	if (!port->membase)
		return -EINVAL;

	err = FUNC2(port->mapbase, sizeof(struct mpc52xx_psc),
			"mpc52xx_psc_uart") != NULL ? 0 : -EBUSY;

	if (err && (port->flags & UPF_IOREMAP)) {
		FUNC1(port->membase);
		port->membase = NULL;
	}

	return err;
}