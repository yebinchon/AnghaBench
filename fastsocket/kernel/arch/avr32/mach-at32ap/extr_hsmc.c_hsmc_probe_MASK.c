#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hsmc {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  regs; struct clk* mck; struct clk* pclk; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 TYPE_1__* hsmc ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct resource *regs;
	struct clk *pclk, *mck;
	int ret;

	if (hsmc)
		return -EBUSY;

	regs = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!regs)
		return -ENXIO;
	pclk = FUNC4(&pdev->dev, "pclk");
	if (FUNC0(pclk))
		return FUNC1(pclk);
	mck = FUNC4(&pdev->dev, "mck");
	if (FUNC0(mck)) {
		ret = FUNC1(mck);
		goto out_put_pclk;
	}

	ret = -ENOMEM;
	hsmc = FUNC9(sizeof(struct hsmc), GFP_KERNEL);
	if (!hsmc)
		goto out_put_clocks;

	FUNC3(pclk);
	FUNC3(mck);

	hsmc->pclk = pclk;
	hsmc->mck = mck;
	hsmc->regs = FUNC7(regs->start, regs->end - regs->start + 1);
	if (!hsmc->regs)
		goto out_disable_clocks;

	FUNC6(&pdev->dev, "Atmel Static Memory Controller at 0x%08lx\n",
		 (unsigned long)regs->start);

	FUNC11(pdev, hsmc);

	return 0;

out_disable_clocks:
	FUNC2(mck);
	FUNC2(pclk);
	FUNC8(hsmc);
out_put_clocks:
	FUNC5(mck);
out_put_pclk:
	FUNC5(pclk);
	hsmc = NULL;
	return ret;
}