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
struct uart_port {int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; } ;
struct platform_device {TYPE_1__* resource; } ;
struct TYPE_2__ {int end; int start; } ;

/* Variables and functions */
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct platform_device *pdev = FUNC2(port->dev);
	int size = pdev->resource[0].end - pdev->resource[0].start + 1;

	FUNC1(port->mapbase, size);

	if (port->flags & UPF_IOREMAP) {
		FUNC0(port->membase);
		port->membase = NULL;
	}
}