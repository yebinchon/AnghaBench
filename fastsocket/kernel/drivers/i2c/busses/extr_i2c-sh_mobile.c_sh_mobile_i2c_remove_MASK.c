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
struct sh_mobile_i2c_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  reg; int /*<<< orphan*/  adap; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_i2c_data*) ; 
 struct sh_mobile_i2c_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct sh_mobile_i2c_data *pd = FUNC4(dev);

	FUNC1(&pd->adap);
	FUNC2(pd->reg);
	FUNC6(dev, 0);
	FUNC0(pd->clk);
	FUNC5(&dev->dev);
	FUNC3(pd);
	return 0;
}