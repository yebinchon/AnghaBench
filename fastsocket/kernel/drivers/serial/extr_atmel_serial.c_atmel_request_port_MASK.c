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
struct uart_port {int flags; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; int /*<<< orphan*/  dev; } ;
struct platform_device {TYPE_1__* resource; } ;
struct TYPE_2__ {int end; int start; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	struct platform_device *pdev = FUNC3(port->dev);
	int size = pdev->resource[0].end - pdev->resource[0].start + 1;

	if (!FUNC2(port->mapbase, size, "atmel_serial"))
		return -EBUSY;

	if (port->flags & UPF_IOREMAP) {
		port->membase = FUNC0(port->mapbase, size);
		if (port->membase == NULL) {
			FUNC1(port->mapbase, size);
			return -ENOMEM;
		}
	}

	return 0;
}