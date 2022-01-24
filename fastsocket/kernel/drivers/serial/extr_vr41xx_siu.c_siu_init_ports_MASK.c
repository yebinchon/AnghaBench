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
struct uart_port {int type; int uartclk; int fifosize; int flags; int line; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; scalar_t__ regshift; int /*<<< orphan*/  irq; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PORT_UNKNOWN ; 
 int SIU_BAUD_BASE ; 
 int SIU_PORTS_MAX ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct uart_port* siu_uart_ports ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct uart_port *port;
	struct resource *res;
	int *type = pdev->dev.platform_data;
	int i;

	if (!type)
		return 0;

	port = siu_uart_ports;
	for (i = 0; i < SIU_PORTS_MAX; i++) {
		port->type = type[i];
		if (port->type == PORT_UNKNOWN)
			continue;
		port->irq = FUNC0(pdev, i);
		port->uartclk = SIU_BAUD_BASE * 16;
		port->fifosize = 16;
		port->regshift = 0;
		port->iotype = UPIO_MEM;
		port->flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
		port->line = i;
		res = FUNC1(pdev, IORESOURCE_MEM, i);
		port->mapbase = res->start;
		port++;
	}

	return i;
}