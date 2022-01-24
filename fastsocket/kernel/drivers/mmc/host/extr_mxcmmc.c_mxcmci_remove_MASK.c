#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mxcmci_host {TYPE_2__* res; int /*<<< orphan*/  clk; int /*<<< orphan*/  dma; int /*<<< orphan*/  base; int /*<<< orphan*/  irq; TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ *,struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 struct mxcmci_host* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 struct mmc_host* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct mmc_host*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC8(pdev);
	struct mxcmci_host *host = FUNC6(mmc);

	FUNC9(pdev, NULL);

	FUNC7(mmc);

	if (host->pdata && host->pdata->exit)
		host->pdata->exit(&pdev->dev, mmc);

	FUNC2(host->irq, host);
	FUNC4(host->base);
#ifdef HAS_DMA
	imx_dma_free(host->dma);
#endif
	FUNC0(host->clk);
	FUNC1(host->clk);

	FUNC10(host->res->start, FUNC12(host->res));
	FUNC11(host->res);

	FUNC5(mmc);

	return 0;
}