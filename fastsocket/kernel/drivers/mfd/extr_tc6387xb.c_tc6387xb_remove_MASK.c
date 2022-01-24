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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct clk *clk32k = FUNC3(dev);

	FUNC2(&dev->dev);
	FUNC0(clk32k);
	FUNC1(clk32k);
	FUNC4(dev, NULL);

	return 0;
}