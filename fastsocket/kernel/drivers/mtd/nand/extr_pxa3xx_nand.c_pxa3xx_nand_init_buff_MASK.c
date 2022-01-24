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
struct pxa_dma_desc {int dummy; } ;
struct pxa3xx_nand_info {int data_buff_size; scalar_t__ data_dma_ch; int /*<<< orphan*/  data_buff_phys; int /*<<< orphan*/ * data_buff; scalar_t__ data_desc_addr; void* data_desc; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIO_LOW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pxa3xx_nand_data_dma_irq ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa3xx_nand_info*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC5(struct pxa3xx_nand_info *info)
{
	struct platform_device *pdev = info->pdev;
	int data_desc_offset = MAX_BUFF_SIZE - sizeof(struct pxa_dma_desc);

	if (use_dma == 0) {
		info->data_buff = FUNC3(MAX_BUFF_SIZE, GFP_KERNEL);
		if (info->data_buff == NULL)
			return -ENOMEM;
		return 0;
	}

	info->data_buff = FUNC1(&pdev->dev, MAX_BUFF_SIZE,
				&info->data_buff_phys, GFP_KERNEL);
	if (info->data_buff == NULL) {
		FUNC0(&pdev->dev, "failed to allocate dma buffer\n");
		return -ENOMEM;
	}

	info->data_buff_size = MAX_BUFF_SIZE;
	info->data_desc = (void *)info->data_buff + data_desc_offset;
	info->data_desc_addr = info->data_buff_phys + data_desc_offset;

	info->data_dma_ch = FUNC4("nand-data", DMA_PRIO_LOW,
				pxa3xx_nand_data_dma_irq, info);
	if (info->data_dma_ch < 0) {
		FUNC0(&pdev->dev, "failed to request data dma\n");
		FUNC2(&pdev->dev, info->data_buff_size,
				info->data_buff, info->data_buff_phys);
		return info->data_dma_ch;
	}

	return 0;
}