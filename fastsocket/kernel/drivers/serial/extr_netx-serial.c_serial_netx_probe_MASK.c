#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {scalar_t__ membase; int /*<<< orphan*/ * dev; } ;
struct platform_device {size_t id; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct uart_port port; } ;

/* Variables and functions */
 scalar_t__ UART_RXFIFO_IRQLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* netx_ports ; 
 int /*<<< orphan*/  netx_reg ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct uart_port *port = &netx_ports[pdev->id].port;

	FUNC0(&pdev->dev, "initialising\n");

	port->dev = &pdev->dev;

	FUNC3(1, port->membase + UART_RXFIFO_IRQLEVEL);
	FUNC2(&netx_reg, &netx_ports[pdev->id].port);
	FUNC1(pdev, &netx_ports[pdev->id]);

	return 0;
}