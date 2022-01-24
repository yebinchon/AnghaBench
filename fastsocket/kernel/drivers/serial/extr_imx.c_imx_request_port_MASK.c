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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,scalar_t__,char*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port)
{
	struct platform_device *pdev = FUNC2(port->dev);
	struct resource *mmres;
	void *ret;

	mmres = FUNC0(pdev, IORESOURCE_MEM, 0);
	if (!mmres)
		return -ENODEV;

	ret = FUNC1(mmres->start, mmres->end - mmres->start + 1,
			"imx-uart");

	return  ret ? 0 : -EBUSY;
}