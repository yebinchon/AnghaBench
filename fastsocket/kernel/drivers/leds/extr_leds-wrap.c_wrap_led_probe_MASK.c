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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wrap_error_led ; 
 int /*<<< orphan*/  wrap_extra_led ; 
 int /*<<< orphan*/  wrap_power_led ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int ret;

	ret = FUNC0(&pdev->dev, &wrap_power_led);
	if (ret < 0)
		return ret;

	ret = FUNC0(&pdev->dev, &wrap_error_led);
	if (ret < 0)
		goto err1;

	ret = FUNC0(&pdev->dev, &wrap_extra_led);
	if (ret < 0)
		goto err2;

	return ret;

err2:
	FUNC1(&wrap_error_led);
err1:
	FUNC1(&wrap_power_led);

	return ret;
}