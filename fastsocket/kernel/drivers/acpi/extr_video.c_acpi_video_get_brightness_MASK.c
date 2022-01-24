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
struct backlight_device {int dummy; } ;
struct acpi_video_device {TYPE_1__* brightness; } ;
struct TYPE_2__ {int count; unsigned long long* levels; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct acpi_video_device*,unsigned long long*) ; 
 scalar_t__ FUNC1 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd)
{
	unsigned long long cur_level;
	int i;
	struct acpi_video_device *vd =
		(struct acpi_video_device *)FUNC1(bd);

	if (FUNC0(vd, &cur_level))
		return -EINVAL;
	for (i = 2; i < vd->brightness->count; i++) {
		if (vd->brightness->levels[i] == cur_level)
			/* The first two entries are special - see page 575
			   of the ACPI spec 3.0 */
			return i-2;
	}
	return 0;
}