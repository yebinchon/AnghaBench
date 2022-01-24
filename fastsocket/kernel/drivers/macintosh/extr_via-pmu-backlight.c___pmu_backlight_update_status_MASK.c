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
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;
struct adb_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  PMU_BACKLIGHT_BRIGHT ; 
 int /*<<< orphan*/  PMU_POWER_CTRL ; 
 int PMU_POW_BACKLIGHT ; 
 int PMU_POW_OFF ; 
 int PMU_POW_ON ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct adb_request*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adb_request*) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	struct adb_request req;
	int level = bd->props.brightness;


	if (bd->props.power != FB_BLANK_UNBLANK ||
	    bd->props.fb_blank != FB_BLANK_UNBLANK)
		level = 0;

	if (level > 0) {
		int pmulevel = FUNC0(level);

		FUNC1(&req, NULL, 2, PMU_BACKLIGHT_BRIGHT, pmulevel);
		FUNC2(&req);

		FUNC1(&req, NULL, 2, PMU_POWER_CTRL,
			PMU_POW_BACKLIGHT | PMU_POW_ON);
		FUNC2(&req);
	} else {
		FUNC1(&req, NULL, 2, PMU_POWER_CTRL,
			PMU_POW_BACKLIGHT | PMU_POW_OFF);
		FUNC2(&req);
	}

	return 0;
}