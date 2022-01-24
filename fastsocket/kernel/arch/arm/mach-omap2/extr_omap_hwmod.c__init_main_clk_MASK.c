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
struct omap_hwmod {struct clk* _clk; int /*<<< orphan*/  clkdev_con_id; int /*<<< orphan*/  clkdev_dev_id; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_hwmod *oh)
{
	struct clk *c;
	int ret = 0;

	if (!oh->clkdev_con_id)
		return 0;

	c = FUNC2(oh->clkdev_dev_id, oh->clkdev_con_id);
	FUNC1(FUNC0(c), "omap_hwmod: %s: cannot clk_get main_clk %s.%s\n",
	     oh->name, oh->clkdev_dev_id, oh->clkdev_con_id);
	if (FUNC0(c))
		ret = -EINVAL;
	oh->_clk = c;

	return ret;
}