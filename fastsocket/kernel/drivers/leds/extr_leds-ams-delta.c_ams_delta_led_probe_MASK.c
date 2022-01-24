#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 TYPE_3__* ams_delta_leds ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int i, ret;

	for (i = 0; i < FUNC0(ams_delta_leds); i++) {
		ams_delta_leds[i].cdev.flags |= LED_CORE_SUSPENDRESUME;
		ret = FUNC1(&pdev->dev,
				&ams_delta_leds[i].cdev);
		if (ret < 0)
			goto fail;
	}

	return 0;
fail:
	while (--i >= 0)
		FUNC2(&ams_delta_leds[i].cdev);
	return ret;	
}