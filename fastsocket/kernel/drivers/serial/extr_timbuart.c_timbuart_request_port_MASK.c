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
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct platform_device *pdev = FUNC5(port->dev);
	int size =
		FUNC4(FUNC1(pdev, IORESOURCE_MEM, 0));

	if (!FUNC3(port->mapbase, size, "timb-uart"))
		return -EBUSY;

	if (port->flags & UPF_IOREMAP) {
		port->membase = FUNC0(port->mapbase, size);
		if (port->membase == NULL) {
			FUNC2(port->mapbase, size);
			return -ENOMEM;
		}
	}

	return 0;
}