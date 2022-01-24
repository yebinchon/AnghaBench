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
struct resource {int /*<<< orphan*/  start; } ;
struct pxa3xx_nand_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; } ;
struct nand_chip {int dummy; } ;
struct pxa3xx_nand_info {int /*<<< orphan*/  clk; int /*<<< orphan*/ * mmio_base; struct mtd_info* data_buff; int /*<<< orphan*/  data_buff_phys; int /*<<< orphan*/  data_buff_size; int /*<<< orphan*/  data_dma_ch; int /*<<< orphan*/  drcmr_cmd; int /*<<< orphan*/  drcmr_dat; struct nand_chip nand_chip; struct platform_device* pdev; } ;
struct TYPE_4__ {struct pxa3xx_nand_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct mtd_info {int /*<<< orphan*/  owner; struct pxa3xx_nand_info* priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  IRQ_NAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pxa3xx_nand_info*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mtd_info*) ; 
 struct mtd_info* FUNC13 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct mtd_info*,int) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct mtd_info*) ; 
 int FUNC18 (struct pxa3xx_nand_info*,struct pxa3xx_nand_platform_data*) ; 
 int FUNC19 (struct pxa3xx_nand_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct mtd_info*,struct pxa3xx_nand_info*) ; 
 int /*<<< orphan*/  pxa3xx_nand_irq ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa3xx_nand_info*) ; 
 struct resource* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct resource*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct pxa3xx_nand_platform_data *pdata;
	struct pxa3xx_nand_info *info;
	struct nand_chip *this;
	struct mtd_info *mtd;
	struct resource *r;
	int ret = 0, irq;

	pdata = pdev->dev.platform_data;

	if (!pdata) {
		FUNC7(&pdev->dev, "no platform data defined\n");
		return -ENODEV;
	}

	mtd = FUNC13(sizeof(struct mtd_info) + sizeof(struct pxa3xx_nand_info),
			GFP_KERNEL);
	if (!mtd) {
		FUNC7(&pdev->dev, "failed to allocate memory\n");
		return -ENOMEM;
	}

	info = (struct pxa3xx_nand_info *)(&mtd[1]);
	info->pdev = pdev;

	this = &info->nand_chip;
	mtd->priv = info;
	mtd->owner = THIS_MODULE;

	info->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(info->clk)) {
		FUNC7(&pdev->dev, "failed to get nand clock\n");
		ret = FUNC1(info->clk);
		goto fail_free_mtd;
	}
	FUNC4(info->clk);

	r = FUNC16(pdev, IORESOURCE_DMA, 0);
	if (r == NULL) {
		FUNC7(&pdev->dev, "no resource defined for data DMA\n");
		ret = -ENXIO;
		goto fail_put_clk;
	}
	info->drcmr_dat = r->start;

	r = FUNC16(pdev, IORESOURCE_DMA, 1);
	if (r == NULL) {
		FUNC7(&pdev->dev, "no resource defined for command DMA\n");
		ret = -ENXIO;
		goto fail_put_clk;
	}
	info->drcmr_cmd = r->start;

	irq = FUNC15(pdev, 0);
	if (irq < 0) {
		FUNC7(&pdev->dev, "no IRQ resource defined\n");
		ret = -ENXIO;
		goto fail_put_clk;
	}

	r = FUNC16(pdev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		FUNC7(&pdev->dev, "no IO memory resource defined\n");
		ret = -ENODEV;
		goto fail_put_clk;
	}

	r = FUNC24(r->start, FUNC25(r), pdev->name);
	if (r == NULL) {
		FUNC7(&pdev->dev, "failed to request memory resource\n");
		ret = -EBUSY;
		goto fail_put_clk;
	}

	info->mmio_base = FUNC10(r->start, FUNC25(r));
	if (info->mmio_base == NULL) {
		FUNC7(&pdev->dev, "ioremap() failed\n");
		ret = -ENODEV;
		goto fail_free_res;
	}

	ret = FUNC19(info);
	if (ret)
		goto fail_free_io;

	ret = FUNC23(IRQ_NAND, pxa3xx_nand_irq, IRQF_DISABLED,
				pdev->name, info);
	if (ret < 0) {
		FUNC7(&pdev->dev, "failed to request IRQ\n");
		goto fail_free_buf;
	}

	ret = FUNC18(info, pdata);
	if (ret) {
		FUNC7(&pdev->dev, "failed to detect flash\n");
		ret = -ENODEV;
		goto fail_free_irq;
	}

	FUNC20(mtd, info);

	FUNC17(pdev, mtd);

	if (FUNC14(mtd, 1)) {
		FUNC7(&pdev->dev, "failed to scan nand\n");
		ret = -ENXIO;
		goto fail_free_irq;
	}

	return FUNC2(mtd, pdata->parts, pdata->nr_parts);

fail_free_irq:
	FUNC9(IRQ_NAND, info);
fail_free_buf:
	if (use_dma) {
		FUNC21(info->data_dma_ch);
		FUNC8(&pdev->dev, info->data_buff_size,
			info->data_buff, info->data_buff_phys);
	} else
		FUNC12(info->data_buff);
fail_free_io:
	FUNC11(info->mmio_base);
fail_free_res:
	FUNC22(r->start, FUNC25(r));
fail_put_clk:
	FUNC3(info->clk);
	FUNC6(info->clk);
fail_free_mtd:
	FUNC12(mtd);
	return ret;
}