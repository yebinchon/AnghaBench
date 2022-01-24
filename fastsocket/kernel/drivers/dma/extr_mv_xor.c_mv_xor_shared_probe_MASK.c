#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {struct mv_xor_platform_shared_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mv_xor_shared_private {void* xor_high_base; void* xor_base; } ;
struct mv_xor_platform_shared_data {int /*<<< orphan*/ * dram; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 void* FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 struct mv_xor_shared_private* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_xor_shared_private*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct mv_xor_shared_private*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mv_xor_platform_shared_data *msd = pdev->dev.platform_data;
	struct mv_xor_shared_private *msp;
	struct resource *res;

	FUNC0(KERN_NOTICE, &pdev->dev, "Marvell shared XOR driver\n");

	msp = FUNC2(&pdev->dev, sizeof(*msp), GFP_KERNEL);
	if (!msp)
		return -ENOMEM;

	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	msp->xor_base = FUNC1(&pdev->dev, res->start,
				     res->end - res->start + 1);
	if (!msp->xor_base)
		return -EBUSY;

	res = FUNC4(pdev, IORESOURCE_MEM, 1);
	if (!res)
		return -ENODEV;

	msp->xor_high_base = FUNC1(&pdev->dev, res->start,
					  res->end - res->start + 1);
	if (!msp->xor_high_base)
		return -EBUSY;

	FUNC5(pdev, msp);

	/*
	 * (Re-)program MBUS remapping windows if we are asked to.
	 */
	if (msd != NULL && msd->dram != NULL)
		FUNC3(msp, msd->dram);

	return 0;
}