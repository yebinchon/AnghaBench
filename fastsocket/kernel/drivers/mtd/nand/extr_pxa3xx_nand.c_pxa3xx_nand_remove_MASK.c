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
struct resource {int /*<<< orphan*/  start; } ;
struct pxa3xx_nand_info {int /*<<< orphan*/  clk; int /*<<< orphan*/  mmio_base; struct mtd_info* data_buff; int /*<<< orphan*/  data_buff_phys; int /*<<< orphan*/  data_buff_size; int /*<<< orphan*/  data_dma_ch; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_NAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pxa3xx_nand_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*) ; 
 struct mtd_info* FUNC8 (struct platform_device*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mtd_info *mtd = FUNC8(pdev);
	struct pxa3xx_nand_info *info = mtd->priv;
	struct resource *r;

	FUNC10(pdev, NULL);

	FUNC2(mtd);
	FUNC3(mtd);
	FUNC5(IRQ_NAND, info);
	if (use_dma) {
		FUNC11(info->data_dma_ch);
		FUNC4(&pdev->dev, info->data_buff_size,
				info->data_buff, info->data_buff_phys);
	} else
		FUNC7(info->data_buff);

	FUNC6(info->mmio_base);
	r = FUNC9(pdev, IORESOURCE_MEM, 0);
	FUNC12(r->start, FUNC13(r));

	FUNC0(info->clk);
	FUNC1(info->clk);

	FUNC7(mtd);
	return 0;
}