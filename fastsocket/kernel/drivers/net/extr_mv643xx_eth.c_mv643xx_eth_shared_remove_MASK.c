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
struct TYPE_2__ {struct mv643xx_eth_shared_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mv643xx_eth_shared_private {scalar_t__ err_interrupt; int /*<<< orphan*/  base; int /*<<< orphan*/  smi_bus; } ;
struct mv643xx_eth_shared_platform_data {int /*<<< orphan*/ * shared_smi; } ;

/* Variables and functions */
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct mv643xx_eth_shared_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_shared_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_shared_private* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mv643xx_eth_shared_private *msp = FUNC5(pdev);
	struct mv643xx_eth_shared_platform_data *pd = pdev->dev.platform_data;

	if (pd == NULL || pd->shared_smi == NULL) {
		FUNC4(msp->smi_bus);
		FUNC3(msp->smi_bus);
	}
	if (msp->err_interrupt != NO_IRQ)
		FUNC0(msp->err_interrupt, msp);
	FUNC1(msp->base);
	FUNC2(msp);

	return 0;
}