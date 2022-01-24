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
struct sm501_devdata {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct plat_serial8250_port* platform_data; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct plat_serial8250_port {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PLAT8250_DEV_SM501 ; 
 int /*<<< orphan*/  SM501_GATE_UART0 ; 
 int /*<<< orphan*/  SM501_GATE_UART1 ; 
 int /*<<< orphan*/  SM501_GPIO63_32_CONTROL ; 
 int /*<<< orphan*/  SM501_IRQ_MASK ; 
 int SM501_USE_UART0 ; 
 int SM501_USE_UART1 ; 
 struct platform_device* FUNC0 (struct sm501_devdata*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sm501_devdata*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sm501_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sm501_devdata *sm, int devices)
{
	struct platform_device *pdev;
	struct plat_serial8250_port *uart_data;

	pdev = FUNC0(sm, "serial8250", 0,
				   sizeof(struct plat_serial8250_port) * 3);
	if (!pdev)
		return -ENOMEM;

	uart_data = pdev->dev.platform_data;

	if (devices & SM501_USE_UART0) {
		FUNC3(sm, uart_data++, 0x30000);
		FUNC4(sm->dev, SM501_GATE_UART0, 1);
		FUNC1(sm->dev, SM501_IRQ_MASK, 1 << 12, 0);
		FUNC1(sm->dev, SM501_GPIO63_32_CONTROL, 0x01e0, 0);
	}
	if (devices & SM501_USE_UART1) {
		FUNC3(sm, uart_data++, 0x30020);
		FUNC4(sm->dev, SM501_GATE_UART1, 1);
		FUNC1(sm->dev, SM501_IRQ_MASK, 1 << 13, 0);
		FUNC1(sm->dev, SM501_GPIO63_32_CONTROL, 0x1e00, 0);
	}

	pdev->id = PLAT8250_DEV_SM501;

	return FUNC2(sm, pdev);
}