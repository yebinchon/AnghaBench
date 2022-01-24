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
struct pnp_dev {void* active; int /*<<< orphan*/  number; TYPE_1__* card; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_DISABLED ; 
 scalar_t__ ISAPNP_CFG_ACTIVATE ; 
 scalar_t__ ISAPNP_CFG_DMA ; 
 scalar_t__ ISAPNP_CFG_IRQ ; 
 scalar_t__ ISAPNP_CFG_MEM ; 
 scalar_t__ ISAPNP_CFG_PORT ; 
 int ISAPNP_MAX_DMA ; 
 int ISAPNP_MAX_IRQ ; 
 int ISAPNP_MAX_MEM ; 
 int ISAPNP_MAX_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pnp_dev*) ; 

__attribute__((used)) static int FUNC10(struct pnp_dev *dev)
{
	int i, ret;

	FUNC8(&dev->dev, "get resources\n");
	FUNC9(dev);
	FUNC0(dev->card->number, dev->number);
	dev->active = FUNC2(ISAPNP_CFG_ACTIVATE);
	if (!dev->active)
		goto __end;

	for (i = 0; i < ISAPNP_MAX_PORT; i++) {
		ret = FUNC3(ISAPNP_CFG_PORT + (i << 1));
		FUNC5(dev, ret, ret,
				    ret == 0 ? IORESOURCE_DISABLED : 0);
	}
	for (i = 0; i < ISAPNP_MAX_MEM; i++) {
		ret = FUNC3(ISAPNP_CFG_MEM + (i << 3)) << 8;
		FUNC7(dev, ret, ret,
				     ret == 0 ? IORESOURCE_DISABLED : 0);
	}
	for (i = 0; i < ISAPNP_MAX_IRQ; i++) {
		ret = FUNC3(ISAPNP_CFG_IRQ + (i << 1)) >> 8;
		FUNC6(dev, ret,
				     ret == 0 ? IORESOURCE_DISABLED : 0);
	}
	for (i = 0; i < ISAPNP_MAX_DMA; i++) {
		ret = FUNC2(ISAPNP_CFG_DMA + i);
		FUNC4(dev, ret,
				     ret == 4 ? IORESOURCE_DISABLED : 0);
	}

__end:
	FUNC1();
	return 0;
}