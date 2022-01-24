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
struct push_switch_platform_info {scalar_t__ name; } ;
struct push_switch {int /*<<< orphan*/  debounce; } ;
struct TYPE_2__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_switch ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct push_switch*) ; 
 struct push_switch* FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct push_switch *psw = FUNC5(pdev);
	struct push_switch_platform_info *psw_info = pdev->dev.platform_data;
	int irq = FUNC6(pdev, 0);

	if (psw_info->name)
		FUNC1(&pdev->dev, &dev_attr_switch);

	FUNC7(pdev, NULL);
	FUNC2();
	FUNC0(&psw->debounce);
	FUNC3(irq, pdev);

	FUNC4(psw);

	return 0;
}