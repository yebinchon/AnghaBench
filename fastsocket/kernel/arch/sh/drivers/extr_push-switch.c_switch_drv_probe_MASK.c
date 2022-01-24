#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct push_switch_platform_info {int irq_flags; scalar_t__ name; int /*<<< orphan*/  irq_handler; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct push_switch {struct platform_device* pdev; TYPE_1__ debounce; int /*<<< orphan*/  work; } ;
struct TYPE_5__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DRV_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_DISABLED ; 
 int /*<<< orphan*/  dev_attr_switch ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct push_switch*) ; 
 struct push_switch* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct push_switch*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int,scalar_t__,struct platform_device*) ; 
 int /*<<< orphan*/  switch_timer ; 
 int /*<<< orphan*/  switch_work_handler ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct push_switch_platform_info *psw_info;
	struct push_switch *psw;
	int ret, irq;

	psw = FUNC7(sizeof(struct push_switch), GFP_KERNEL);
	if (FUNC11(!psw))
		return -ENOMEM;

	irq = FUNC8(pdev, 0);
	if (FUNC11(irq < 0)) {
		ret = -ENODEV;
		goto err;
	}

	psw_info = pdev->dev.platform_data;
	FUNC0(!psw_info);

	ret = FUNC10(irq, psw_info->irq_handler,
			  IRQF_DISABLED | psw_info->irq_flags,
			  psw_info->name ? psw_info->name : DRV_NAME, pdev);
	if (FUNC11(ret < 0))
		goto err;

	if (psw_info->name) {
		ret = FUNC3(&pdev->dev, &dev_attr_switch);
		if (FUNC11(ret)) {
			FUNC2(&pdev->dev, "Failed creating device attrs\n");
			ret = -EINVAL;
			goto err_irq;
		}
	}

	FUNC1(&psw->work, switch_work_handler);
	FUNC5(&psw->debounce);

	psw->debounce.function = switch_timer;
	psw->debounce.data = (unsigned long)psw;

	/* Workqueue API brain-damage */
	psw->pdev = pdev;

	FUNC9(pdev, psw);

	return 0;

err_irq:
	FUNC4(irq, pdev);
err:
	FUNC6(psw);
	return ret;
}