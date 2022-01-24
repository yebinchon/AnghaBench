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
struct uart_port {scalar_t__ mapbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ULITE_REGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct uart_port*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	FUNC2("ulite console: port=%p; port->mapbase=%llx\n",
		 port, (unsigned long long) port->mapbase);

	if (!FUNC4(port->mapbase, ULITE_REGION, "uartlite")) {
		FUNC0(port->dev, "Memory region busy\n");
		return -EBUSY;
	}

	port->membase = FUNC1(port->mapbase, ULITE_REGION);
	if (!port->membase) {
		FUNC0(port->dev, "Unable to map registers\n");
		FUNC3(port->mapbase, ULITE_REGION);
		return -EBUSY;
	}

	return 0;
}