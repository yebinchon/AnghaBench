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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; int /*<<< orphan*/  dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct platform_device *pdev = FUNC4(port->dev);
	struct resource *resource;
	resource_size_t size;

	resource = FUNC1(pdev, IORESOURCE_MEM, 0);
	if (FUNC5(!resource))
		return -ENXIO;
	size = resource->end - resource->start + 1;

	if (FUNC5(!FUNC3(port->mapbase, size, "msm_serial")))
		return -EBUSY;

	port->membase = FUNC0(port->mapbase, size);
	if (!port->membase) {
		FUNC2(port->mapbase, size);
		return -EBUSY;
	}

	return 0;
}