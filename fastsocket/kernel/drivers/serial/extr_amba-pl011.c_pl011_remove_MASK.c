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
struct TYPE_2__ {int /*<<< orphan*/  membase; } ;
struct uart_amba_port {int /*<<< orphan*/  clk; TYPE_1__ port; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uart_amba_port**) ; 
 struct uart_amba_port* FUNC1 (struct amba_device*) ; 
 struct uart_amba_port** amba_ports ; 
 int /*<<< orphan*/  amba_reg ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct amba_device *dev)
{
	struct uart_amba_port *uap = FUNC1(dev);
	int i;

	FUNC2(dev, NULL);

	FUNC6(&amba_reg, &uap->port);

	for (i = 0; i < FUNC0(amba_ports); i++)
		if (amba_ports[i] == uap)
			amba_ports[i] = NULL;

	FUNC4(uap->port.membase);
	FUNC3(uap->clk);
	FUNC5(uap);
	return 0;
}