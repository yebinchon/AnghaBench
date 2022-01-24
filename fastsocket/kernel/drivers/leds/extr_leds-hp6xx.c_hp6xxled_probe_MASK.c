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
 int /*<<< orphan*/  hp6xx_green_led ; 
 int /*<<< orphan*/  hp6xx_red_led ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int ret;

	ret = FUNC0(&pdev->dev, &hp6xx_red_led);
	if (ret < 0)
		return ret;

	ret = FUNC0(&pdev->dev, &hp6xx_green_led);
	if (ret < 0)
		FUNC1(&hp6xx_red_led);

	return ret;
}