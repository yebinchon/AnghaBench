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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {struct heartbeat_data* platform_data; } ;
struct platform_device {int num_resources; TYPE_1__ dev; } ;
struct heartbeat_data {int nr_bits; int* bit_pos; int mask; int regsize; int /*<<< orphan*/  timer; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int* default_bit_pos ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  heartbeat_timer ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct heartbeat_data*) ; 
 struct heartbeat_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct heartbeat_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *res;
	struct heartbeat_data *hd;
	int i;

	if (FUNC9(pdev->num_resources != 1)) {
		FUNC1(&pdev->dev, "invalid number of resources\n");
		return -EINVAL;
	}

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (FUNC9(res == NULL)) {
		FUNC1(&pdev->dev, "invalid resource\n");
		return -EINVAL;
	}

	if (pdev->dev.platform_data) {
		hd = pdev->dev.platform_data;
	} else {
		hd = FUNC4(sizeof(struct heartbeat_data), GFP_KERNEL);
		if (FUNC9(!hd))
			return -ENOMEM;
	}

	hd->base = FUNC2(res->start, res->end - res->start + 1);
	if (FUNC9(!hd->base)) {
		FUNC1(&pdev->dev, "ioremap failed\n");

		if (!pdev->dev.platform_data)
			FUNC3(hd);

		return -ENXIO;
	}

	if (!hd->nr_bits) {
		hd->bit_pos = default_bit_pos;
		hd->nr_bits = FUNC0(default_bit_pos);
	}

	hd->mask = 0;
	for (i = 0; i < hd->nr_bits; i++)
		hd->mask |= (1 << hd->bit_pos[i]);

	if (!hd->regsize)
		hd->regsize = 8;	/* default access size */

	FUNC8(&hd->timer, heartbeat_timer, (unsigned long)hd);
	FUNC7(pdev, hd);

	return FUNC5(&hd->timer, jiffies + 1);
}