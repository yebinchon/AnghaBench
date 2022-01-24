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
struct uart_amba_port {int /*<<< orphan*/  port; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct uart_amba_port* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  amba_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct amba_device *dev)
{
	struct uart_amba_port *uap = FUNC0(dev);

	if (uap)
		FUNC1(&amba_reg, &uap->port);

	return 0;
}