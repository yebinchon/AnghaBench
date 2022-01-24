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
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  brightness_set_handle ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd, int value)
{
	int ret = 0;

	value = (0 < value) ? ((15 < value) ? 15 : value) : 0;
	/* 0 <= value <= 15 */

	if (FUNC1(brightness_set_handle, NULL, value, NULL)) {
		FUNC0("Error changing brightness\n");
		ret = -EIO;
	}

	return ret;
}