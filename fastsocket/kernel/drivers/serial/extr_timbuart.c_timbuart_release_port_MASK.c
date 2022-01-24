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
struct uart_port {int flags; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct platform_device *pdev = FUNC4(port->dev);
	int size =
		FUNC3(FUNC1(pdev, IORESOURCE_MEM, 0));

	if (port->flags & UPF_IOREMAP) {
		FUNC0(port->membase);
		port->membase = NULL;
	}

	FUNC2(port->mapbase, size);
}