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
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {size_t id; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct regulator_dev* FUNC0 (struct platform_device*) ; 
 struct wm8350* FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int /*<<< orphan*/ ) ; 
 TYPE_1__* wm8350_reg ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regulator_dev *rdev = FUNC0(pdev);
	struct wm8350 *wm8350 = FUNC1(rdev);

	FUNC4(wm8350, wm8350_reg[pdev->id].irq);
	FUNC3(wm8350, wm8350_reg[pdev->id].irq);

	FUNC2(rdev);

	return 0;
}