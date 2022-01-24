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
struct device {int dummy; } ;
struct TYPE_2__ {int max_brightness; int /*<<< orphan*/  power; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEEPC_HOTK_FILE ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 struct backlight_device* eeepc_backlight_device ; 
 int /*<<< orphan*/  eeepcbl_ops ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct backlight_device *bd;

	bd = FUNC2(EEEPC_HOTK_FILE, dev,
				       NULL, &eeepcbl_ops);
	if (FUNC0(bd)) {
		FUNC4("Could not register eeepc backlight device\n");
		eeepc_backlight_device = NULL;
		return FUNC1(bd);
	}
	eeepc_backlight_device = bd;
	bd->props.max_brightness = 15;
	bd->props.brightness = FUNC5(NULL);
	bd->props.power = FB_BLANK_UNBLANK;
	FUNC3(bd);
	return 0;
}