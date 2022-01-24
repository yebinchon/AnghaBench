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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int RSET_UART_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,char*) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	unsigned int size;

	size = RSET_UART_SIZE;
	if (!FUNC3(port->mapbase, size, "bcm63xx")) {
		FUNC0(port->dev, "Memory region busy\n");
		return -EBUSY;
	}

	port->membase = FUNC1(port->mapbase, size);
	if (!port->membase) {
		FUNC0(port->dev, "Unable to map registers\n");
		FUNC2(port->mapbase, size);
		return -EBUSY;
	}
	return 0;
}