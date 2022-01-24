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
struct platform_device {int dummy; } ;
struct bfin_twi_iface {int saved_control; int /*<<< orphan*/  irq; int /*<<< orphan*/  saved_clkdiv; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int TWI_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfin_twi_iface*) ; 
 struct bfin_twi_iface* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfin_twi_iface*) ; 
 int FUNC3 (struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfin_twi_iface*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev, pm_message_t state)
{
	struct bfin_twi_iface *iface = FUNC1(pdev);

	iface->saved_clkdiv = FUNC2(iface);
	iface->saved_control = FUNC3(iface);

	FUNC0(iface->irq, iface);

	/* Disable TWI */
	FUNC4(iface, iface->saved_control & ~TWI_ENA);

	return 0;
}