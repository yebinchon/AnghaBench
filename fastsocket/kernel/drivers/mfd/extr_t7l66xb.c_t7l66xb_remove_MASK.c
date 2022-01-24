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
struct t7l66xb_platform_data {int (* disable ) (struct platform_device*) ;} ;
struct t7l66xb {int /*<<< orphan*/  rscr; int /*<<< orphan*/  scr; int /*<<< orphan*/  clk48m; } ;
struct TYPE_2__ {struct t7l66xb_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct t7l66xb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct t7l66xb* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct t7l66xb_platform_data *pdata = dev->dev.platform_data;
	struct t7l66xb *t7l66xb = FUNC5(dev);
	int ret;

	ret = pdata->disable(dev);
	FUNC0(t7l66xb->clk48m);
	FUNC1(t7l66xb->clk48m);
	FUNC9(dev);
	FUNC2(t7l66xb->scr);
	FUNC7(&t7l66xb->rscr);
	FUNC4(&dev->dev);
	FUNC6(dev, NULL);
	FUNC3(t7l66xb);

	return ret;

}