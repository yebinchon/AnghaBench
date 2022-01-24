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
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct clk *clk;
	char name[10];
	int retval = 0;

	FUNC4(name, 10, "i2c%d_ck", pdev->id);
	clk = FUNC1(&pdev->dev, name);
	if (!FUNC0(clk)) {
		FUNC3(clk, 0);
		FUNC2(clk);
	} else
		retval = -ENOENT;

	return retval;
}