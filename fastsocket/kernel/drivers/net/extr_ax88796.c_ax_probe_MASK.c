#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int start; int flags; int end; } ;
struct TYPE_6__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct net_device {int irq; unsigned long base_addr; } ;
struct ax_device {int irqflags; int* reg_offsets; int /*<<< orphan*/ * mem; int /*<<< orphan*/ * mem2; int /*<<< orphan*/ * map2; TYPE_1__* plat; struct platform_device* dev; int /*<<< orphan*/  mii_lock; } ;
struct TYPE_5__ {int* reg_offset; int /*<<< orphan*/ * mem; int /*<<< orphan*/  rxcr_base; } ;
struct TYPE_4__ {int* reg_offsets; int /*<<< orphan*/  rcr_val; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_TRIGGER_MASK ; 
 struct net_device* FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 TYPE_2__ ei_status ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 void* FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ax_device*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ax_device* FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct net_device *dev;
	struct ax_device  *ax;
	struct resource   *res;
	size_t size;
	int ret = 0;

	dev = FUNC0(sizeof(struct ax_device));
	if (dev == NULL)
		return -ENOMEM;

	/* ok, let's setup our device */
	ax = FUNC13(dev);

	FUNC7(ax, 0, sizeof(struct ax_device));

	FUNC12(&ax->mii_lock);

	ax->dev = pdev;
	ax->plat = pdev->dev.platform_data;
	FUNC9(pdev, dev);

	ei_status.rxcr_base  = ax->plat->rcr_val;

	/* find the platform resources */

	res = FUNC8(pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC2(&pdev->dev, "no IRQ specified\n");
		goto exit_mem;
	}

	dev->irq = res->start;
	ax->irqflags = res->flags & IRQF_TRIGGER_MASK;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC2(&pdev->dev, "no MEM specified\n");
		ret = -ENXIO;
		goto exit_mem;
	}

	size = (res->end - res->start) + 1;

	/* setup the register offsets from either the platform data
	 * or by using the size of the resource provided */

	if (ax->plat->reg_offsets)
		ei_status.reg_offset = ax->plat->reg_offsets;
	else {
		ei_status.reg_offset = ax->reg_offsets;
		for (ret = 0; ret < 0x18; ret++)
			ax->reg_offsets[ret] = (size / 0x18) * ret;
	}

	ax->mem = FUNC11(res->start, size, pdev->name);
	if (ax->mem == NULL) {
		FUNC2(&pdev->dev, "cannot reserve registers\n");
 		ret = -ENXIO;
		goto exit_mem;
	}

	ei_status.mem = FUNC4(res->start, size);
	dev->base_addr = (unsigned long)ei_status.mem;

	if (ei_status.mem == NULL) {
		FUNC2(&pdev->dev, "Cannot ioremap area (%08llx,%08llx)\n",
			(unsigned long long)res->start,
			(unsigned long long)res->end);

 		ret = -ENXIO;
		goto exit_req;
	}

	/* look for reset area */

	res = FUNC8(pdev, IORESOURCE_MEM, 1);
	if (res == NULL) {
		if (!ax->plat->reg_offsets) {
			for (ret = 0; ret < 0x20; ret++)
				ax->reg_offsets[ret] = (size / 0x20) * ret;
		}

		ax->map2 = NULL;
	} else {
 		size = (res->end - res->start) + 1;

		ax->mem2 = FUNC11(res->start, size, pdev->name);
		if (ax->mem == NULL) {
			FUNC2(&pdev->dev, "cannot reserve registers\n");
			ret = -ENXIO;
			goto exit_mem1;
		}

		ax->map2 = FUNC4(res->start, size);
		if (ax->map2 == NULL) {
			FUNC2(&pdev->dev, "cannot map reset register\n");
			ret = -ENXIO;
			goto exit_mem2;
		}

		ei_status.reg_offset[0x1f] = ax->map2 - ei_status.mem;
	}

	/* got resources, now initialise and register device */

	ret = FUNC1(dev, 1);
	if (!ret)
		return 0;

	if (ax->map2 == NULL)
		goto exit_mem1;

	FUNC5(ax->map2);

 exit_mem2:
	FUNC10(ax->mem2);
	FUNC6(ax->mem2);

 exit_mem1:
	FUNC5(ei_status.mem);

 exit_req:
	FUNC10(ax->mem);
	FUNC6(ax->mem);

 exit_mem:
	FUNC3(dev);

	return ret;
}