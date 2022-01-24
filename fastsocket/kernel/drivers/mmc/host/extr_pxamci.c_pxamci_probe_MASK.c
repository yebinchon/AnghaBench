#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct pxamci_host {int max_blk_size; int max_blk_count; int dma; int clkrate; int f_min; int f_max; int caps; int irq; int imask; int /*<<< orphan*/ * clk; int /*<<< orphan*/  sg_dma; scalar_t__ sg_cpu; scalar_t__ base; TYPE_1__* pdata; int /*<<< orphan*/  dma_drcmrtx; int /*<<< orphan*/  dma_drcmrrx; struct resource* res; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmdat; int /*<<< orphan*/  clkrt; struct pxamci_host* mmc; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  max_phys_segs; int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mmc_host {int max_blk_size; int max_blk_count; int dma; int clkrate; int f_min; int f_max; int caps; int irq; int imask; int /*<<< orphan*/ * clk; int /*<<< orphan*/  sg_dma; scalar_t__ sg_cpu; scalar_t__ base; TYPE_1__* pdata; int /*<<< orphan*/  dma_drcmrtx; int /*<<< orphan*/  dma_drcmrrx; struct resource* res; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmdat; int /*<<< orphan*/  clkrt; struct mmc_host* mmc; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  max_phys_segs; int /*<<< orphan*/ * ops; } ;
struct TYPE_9__ {int gpio_card_detect; int gpio_card_ro; int gpio_power; scalar_t__ get_ro; scalar_t__ setpower; int /*<<< orphan*/  (* init ) (TYPE_2__*,int /*<<< orphan*/ ,struct pxamci_host*) ;int /*<<< orphan*/  gpio_power_invert; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKRT_OFF ; 
 int /*<<< orphan*/  CMDAT_SDIO_INT_EN ; 
 int /*<<< orphan*/  DMA_PRIO_LOW ; 
 char* DRIVER_NAME ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_MMC_HIGHSPEED ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_CAP_SD_HIGHSPEED ; 
 scalar_t__ MMC_I_MASK ; 
 int MMC_I_MASK_ALL ; 
 scalar_t__ MMC_RESTO ; 
 scalar_t__ MMC_SPI ; 
 int /*<<< orphan*/  NR_SG ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int,char*) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct pxamci_host*) ; 
 struct pxamci_host* FUNC21 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (struct pxamci_host*) ; 
 struct pxamci_host* FUNC23 (struct pxamci_host*) ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct pxamci_host*) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxamci_host*) ; 
 int /*<<< orphan*/  pxamci_detect_irq ; 
 int /*<<< orphan*/  pxamci_dma_irq ; 
 int /*<<< orphan*/  FUNC29 (struct pxamci_host*) ; 
 int /*<<< orphan*/  pxamci_irq ; 
 int /*<<< orphan*/  pxamci_ops ; 
 int /*<<< orphan*/  FUNC30 (struct pxamci_host*) ; 
 int /*<<< orphan*/  FUNC31 (struct resource*) ; 
 int FUNC32 (int,int /*<<< orphan*/ ,int,char*,struct pxamci_host*) ; 
 struct resource* FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*,int /*<<< orphan*/ ,struct pxamci_host*) ; 
 int /*<<< orphan*/  FUNC36 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC37(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct pxamci_host *host = NULL;
	struct resource *r, *dmarx, *dmatx;
	int ret, irq, gpio_cd = -1, gpio_ro = -1, gpio_power = -1;

	r = FUNC25(pdev, IORESOURCE_MEM, 0);
	irq = FUNC24(pdev, 0);
	if (!r || irq < 0)
		return -ENXIO;

	r = FUNC33(r->start, SZ_4K, DRIVER_NAME);
	if (!r)
		return -EBUSY;

	mmc = FUNC21(sizeof(struct pxamci_host), &pdev->dev);
	if (!mmc) {
		ret = -ENOMEM;
		goto out;
	}

	mmc->ops = &pxamci_ops;

	/*
	 * We can do SG-DMA, but we don't because we never know how much
	 * data we successfully wrote to the card.
	 */
	mmc->max_phys_segs = NR_SG;

	/*
	 * Our hardware DMA can handle a maximum of one page per SG entry.
	 */
	mmc->max_seg_size = PAGE_SIZE;

	/*
	 * Block length register is only 10 bits before PXA27x.
	 */
	mmc->max_blk_size = FUNC5() ? 1023 : 2048;

	/*
	 * Block count register is 16 bits.
	 */
	mmc->max_blk_count = 65535;

	host = FUNC23(mmc);
	host->mmc = mmc;
	host->dma = -1;
	host->pdata = pdev->dev.platform_data;
	host->clkrt = CLKRT_OFF;

	host->clk = FUNC2(&pdev->dev, NULL);
	if (FUNC0(host->clk)) {
		ret = FUNC1(host->clk);
		host->clk = NULL;
		goto out;
	}

	host->clkrate = FUNC3(host->clk);

	/*
	 * Calculate minimum clock rate, rounding up.
	 */
	mmc->f_min = (host->clkrate + 63) / 64;
	mmc->f_max = (FUNC6() || FUNC7()) ? 26000000
							  : host->clkrate;

	FUNC29(host);

	mmc->caps = 0;
	host->cmdat = 0;
	if (!FUNC5()) {
		mmc->caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
		host->cmdat |= CMDAT_SDIO_INT_EN;
		if (FUNC6() || FUNC7())
			mmc->caps |= MMC_CAP_MMC_HIGHSPEED |
				     MMC_CAP_SD_HIGHSPEED;
	}

	host->sg_cpu = FUNC10(&pdev->dev, PAGE_SIZE, &host->sg_dma, GFP_KERNEL);
	if (!host->sg_cpu) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC34(&host->lock);
	host->res = r;
	host->irq = irq;
	host->imask = MMC_I_MASK_ALL;

	host->base = FUNC18(r->start, SZ_4K);
	if (!host->base) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * Ensure that the host controller is shut down, and setup
	 * with our defaults.
	 */
	FUNC30(host);
	FUNC36(0, host->base + MMC_SPI);
	FUNC36(64, host->base + MMC_RESTO);
	FUNC36(host->imask, host->base + MMC_I_MASK);

	host->dma = FUNC28(DRIVER_NAME, DMA_PRIO_LOW,
				    pxamci_dma_irq, host);
	if (host->dma < 0) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC32(host->irq, pxamci_irq, 0, DRIVER_NAME, host);
	if (ret)
		goto out;

	FUNC26(pdev, mmc);

	dmarx = FUNC25(pdev, IORESOURCE_DMA, 0);
	if (!dmarx) {
		ret = -ENXIO;
		goto out;
	}
	host->dma_drcmrrx = dmarx->start;

	dmatx = FUNC25(pdev, IORESOURCE_DMA, 1);
	if (!dmatx) {
		ret = -ENXIO;
		goto out;
	}
	host->dma_drcmrtx = dmatx->start;

	if (host->pdata) {
		gpio_cd = host->pdata->gpio_card_detect;
		gpio_ro = host->pdata->gpio_card_ro;
		gpio_power = host->pdata->gpio_power;
	}
	if (FUNC15(gpio_power)) {
		ret = FUNC16(gpio_power, "mmc card power");
		if (ret) {
			FUNC8(&pdev->dev, "Failed requesting gpio_power %d\n", gpio_power);
			goto out;
		}
		FUNC13(gpio_power,
				      host->pdata->gpio_power_invert);
	}
	if (FUNC15(gpio_ro)) {
		ret = FUNC16(gpio_ro, "mmc card read only");
		if (ret) {
			FUNC8(&pdev->dev, "Failed requesting gpio_ro %d\n", gpio_ro);
			goto err_gpio_ro;
		}
		FUNC12(gpio_ro);
	}
	if (FUNC15(gpio_cd)) {
		ret = FUNC16(gpio_cd, "mmc card detect");
		if (ret) {
			FUNC8(&pdev->dev, "Failed requesting gpio_cd %d\n", gpio_cd);
			goto err_gpio_cd;
		}
		FUNC12(gpio_cd);

		ret = FUNC32(FUNC17(gpio_cd), pxamci_detect_irq,
				  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				  "mmc card detect", mmc);
		if (ret) {
			FUNC8(&pdev->dev, "failed to request card detect IRQ\n");
			goto err_request_irq;
		}
	}

	if (host->pdata && host->pdata->init)
		host->pdata->init(&pdev->dev, pxamci_detect_irq, mmc);

	if (FUNC15(gpio_power) && host->pdata->setpower)
		FUNC9(&pdev->dev, "gpio_power and setpower() both defined\n");
	if (FUNC15(gpio_ro) && host->pdata->get_ro)
		FUNC9(&pdev->dev, "gpio_ro and get_ro() both defined\n");

	FUNC20(mmc);

	return 0;

err_request_irq:
	FUNC14(gpio_cd);
err_gpio_cd:
	FUNC14(gpio_ro);
err_gpio_ro:
	FUNC14(gpio_power);
 out:
	if (host) {
		if (host->dma >= 0)
			FUNC27(host->dma);
		if (host->base)
			FUNC19(host->base);
		if (host->sg_cpu)
			FUNC11(&pdev->dev, PAGE_SIZE, host->sg_cpu, host->sg_dma);
		if (host->clk)
			FUNC4(host->clk);
	}
	if (mmc)
		FUNC22(mmc);
	FUNC31(r);
	return ret;
}