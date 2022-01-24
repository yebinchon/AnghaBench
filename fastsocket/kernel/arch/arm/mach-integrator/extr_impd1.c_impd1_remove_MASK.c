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
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct lm_device {TYPE_1__ resource; int /*<<< orphan*/  dev; } ;
struct impd1_module {int /*<<< orphan*/  base; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  impd1_remove_one ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct impd1_module*) ; 
 struct impd1_module* FUNC5 (struct lm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct lm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct lm_device *dev)
{
	struct impd1_module *impd1 = FUNC5(dev);
	int i;

	FUNC2(&dev->dev, NULL, impd1_remove_one);

	for (i = 0; i < FUNC0(impd1->clks); i++)
		FUNC1(impd1->clks[i]);

	FUNC6(dev, NULL);

	FUNC3(impd1->base);
	FUNC4(impd1);
	FUNC7(dev->resource.start, SZ_4K);
}