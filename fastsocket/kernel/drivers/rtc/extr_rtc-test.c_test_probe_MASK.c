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
struct rtc_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  dev_attr_irq ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct rtc_device*) ; 
 struct rtc_device* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_device*) ; 
 int /*<<< orphan*/  test_rtc_ops ; 

__attribute__((used)) static int FUNC6(struct platform_device *plat_dev)
{
	int err;
	struct rtc_device *rtc = FUNC4("test", &plat_dev->dev,
						&test_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc)) {
		err = FUNC1(rtc);
		return err;
	}

	err = FUNC2(&plat_dev->dev, &dev_attr_irq);
	if (err)
		goto err;

	FUNC3(plat_dev, rtc);

	return 0;

err:
	FUNC5(rtc);
	return err;
}