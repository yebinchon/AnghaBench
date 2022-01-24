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
struct locomo_dev_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  length; scalar_t__ offset; int /*<<< orphan*/  devid; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; TYPE_1__* parent; int /*<<< orphan*/ * dma_mask; } ;
struct locomo_dev {TYPE_2__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  length; scalar_t__ mapbase; int /*<<< orphan*/  devid; int /*<<< orphan*/  dma_mask; } ;
struct locomo {scalar_t__ base; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct locomo_dev*) ; 
 struct locomo_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  locomo_bus_type ; 
 int /*<<< orphan*/  locomo_dev_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct locomo *lchip, struct locomo_dev_info *info)
{
	struct locomo_dev *dev;
	int ret;

	dev = FUNC3(sizeof(struct locomo_dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * If the parent device has a DMA mask associated with it,
	 * propagate it down to the children.
	 */
	if (lchip->dev->dma_mask) {
		dev->dma_mask = *lchip->dev->dma_mask;
		dev->dev.dma_mask = &dev->dma_mask;
	}

	FUNC0(&dev->dev, "%s", info->name);
	dev->devid	 = info->devid;
	dev->dev.parent  = lchip->dev;
	dev->dev.bus     = &locomo_bus_type;
	dev->dev.release = locomo_dev_release;
	dev->dev.coherent_dma_mask = lchip->dev->coherent_dma_mask;

	if (info->offset)
		dev->mapbase = lchip->base + info->offset;
	else
		dev->mapbase = 0;
	dev->length = info->length;

	FUNC4(dev->irq, info->irq, sizeof(dev->irq));

	ret = FUNC1(&dev->dev);
	if (ret) {
 out:
		FUNC2(dev);
	}
	return ret;
}