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
typedef  size_t u8 ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_display_mode const*,struct drm_display_mode*) ; 
 int /*<<< orphan*/ * edid_cea_modes ; 

u8 FUNC2(const struct drm_display_mode *to_match)
{
	struct drm_display_mode *cea_mode;
	u8 mode;

	for (mode = 0; mode < FUNC0(edid_cea_modes); mode++) {
		cea_mode = (struct drm_display_mode *)&edid_cea_modes[mode];

		if (FUNC1(to_match, cea_mode))
			return mode + 1;
	}
	return 0;
}