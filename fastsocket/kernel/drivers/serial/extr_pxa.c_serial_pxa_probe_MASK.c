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
struct TYPE_2__ {int fifosize; int line; int flags; int /*<<< orphan*/  membase; int /*<<< orphan*/  uartclk; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; scalar_t__ irq; scalar_t__ mapbase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; } ;
struct uart_pxa_port {char* name; int /*<<< orphan*/  clk; TYPE_1__ port; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_PXA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pxa_port*) ; 
 struct uart_pxa_port* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct uart_pxa_port*) ; 
 int /*<<< orphan*/  serial_pxa_pops ; 
 struct uart_pxa_port** serial_pxa_ports ; 
 int /*<<< orphan*/  serial_pxa_reg ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *dev)
{
	struct uart_pxa_port *sport;
	struct resource *mmres, *irqres;
	int ret;

	mmres = FUNC8(dev, IORESOURCE_MEM, 0);
	irqres = FUNC8(dev, IORESOURCE_IRQ, 0);
	if (!mmres || !irqres)
		return -ENODEV;

	sport = FUNC7(sizeof(struct uart_pxa_port), GFP_KERNEL);
	if (!sport)
		return -ENOMEM;

	sport->clk = FUNC2(&dev->dev, NULL);
	if (FUNC0(sport->clk)) {
		ret = FUNC1(sport->clk);
		goto err_free;
	}

	sport->port.type = PORT_PXA;
	sport->port.iotype = UPIO_MEM;
	sport->port.mapbase = mmres->start;
	sport->port.irq = irqres->start;
	sport->port.fifosize = 64;
	sport->port.ops = &serial_pxa_pops;
	sport->port.line = dev->id;
	sport->port.dev = &dev->dev;
	sport->port.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
	sport->port.uartclk = FUNC3(sport->clk);

	switch (dev->id) {
	case 0: sport->name = "FFUART"; break;
	case 1: sport->name = "BTUART"; break;
	case 2: sport->name = "STUART"; break;
	case 3: sport->name = "HWUART"; break;
	default:
		sport->name = "???";
		break;
	}

	sport->port.membase = FUNC5(mmres->start, mmres->end - mmres->start + 1);
	if (!sport->port.membase) {
		ret = -ENOMEM;
		goto err_clk;
	}

	serial_pxa_ports[dev->id] = sport;

	FUNC10(&serial_pxa_reg, &sport->port);
	FUNC9(dev, sport);

	return 0;

 err_clk:
	FUNC4(sport->clk);
 err_free:
	FUNC6(sport);
	return ret;
}