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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct bfin_twi_iface {int /*<<< orphan*/  saved_control; int /*<<< orphan*/  saved_clkdiv; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  bfin_twi_interrupt_entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct bfin_twi_iface* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfin_twi_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfin_twi_iface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bfin_twi_iface *iface = FUNC1(pdev);

	int rc = FUNC2(iface->irq, bfin_twi_interrupt_entry,
		IRQF_DISABLED, pdev->name, iface);
	if (rc) {
		FUNC0(&pdev->dev, "Can't get IRQ %d !\n", iface->irq);
		return -ENODEV;
	}

	/* Resume TWI interface clock as specified */
	FUNC3(iface, iface->saved_clkdiv);

	/* Resume TWI */
	FUNC4(iface, iface->saved_control);

	return 0;
}