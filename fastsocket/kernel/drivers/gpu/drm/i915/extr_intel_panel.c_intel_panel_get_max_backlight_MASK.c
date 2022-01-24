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
typedef  scalar_t__ u32 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

u32 FUNC3(struct drm_device *dev)
{
	u32 max;

	max = FUNC1(dev);
	if (max == 0) {
		/* XXX add code here to query mode clock or hardware clock
		 * and program max PWM appropriately.
		 */
		FUNC2("fixme: max PWM is zero\n");
		return 1;
	}

	FUNC0("max backlight PWM = %d\n", max);
	return max;
}