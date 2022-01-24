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
struct uart_pxa_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  port; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pxa_port*) ; 
 struct uart_pxa_port* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_pxa_reg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct uart_pxa_port *sport = FUNC2(dev);

	FUNC3(dev, NULL);

	FUNC4(&serial_pxa_reg, &sport->port);
	FUNC0(sport->clk);
	FUNC1(sport);

	return 0;
}