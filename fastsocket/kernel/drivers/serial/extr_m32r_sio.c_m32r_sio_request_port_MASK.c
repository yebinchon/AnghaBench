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
struct TYPE_2__ {int flags; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;
struct resource {int end; int start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct uart_sio_port*,struct resource**) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port)
{
	struct uart_sio_port *up = (struct uart_sio_port *)port;
	struct resource *res = NULL;
	int ret = 0;

	ret = FUNC1(up, &res);

	/*
	 * If we have a mapbase, then request that as well.
	 */
	if (ret == 0 && up->port.flags & UPF_IOREMAP) {
		int size = res->end - res->start + 1;

		up->port.membase = FUNC0(up->port.mapbase, size);
		if (!up->port.membase)
			ret = -ENOMEM;
	}

	if (ret < 0) {
		if (res)
			FUNC2(res);
	}

	return ret;
}