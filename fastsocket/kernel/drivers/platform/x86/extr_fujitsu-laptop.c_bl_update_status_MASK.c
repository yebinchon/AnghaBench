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
struct TYPE_2__ {int power; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUJLAPTOP_DBG_ERROR ; 
 int /*<<< orphan*/  FUNC_BACKLIGHT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_alt_lcd_levels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *b)
{
	int ret;
	if (b->props.power == 4)
		ret = FUNC0(FUNC_BACKLIGHT, 0x1, 0x4, 0x3);
	else
		ret = FUNC0(FUNC_BACKLIGHT, 0x1, 0x4, 0x0);
	if (ret != 0)
		FUNC3(FUJLAPTOP_DBG_ERROR,
			"Unable to adjust backlight power, error code %i\n",
			ret);

	if (use_alt_lcd_levels)
		ret = FUNC2(b->props.brightness);
	else
		ret = FUNC1(b->props.brightness);
	if (ret != 0)
		FUNC3(FUJLAPTOP_DBG_ERROR,
			"Unable to adjust LCD brightness, error code %i\n",
			ret);
	return ret;
}