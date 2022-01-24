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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct edid {int revision; } ;
struct drm_display_mode {scalar_t__ clock; int hdisplay; } ;
struct detailed_timing {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*,struct edid*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode const*,struct edid*,int*) ; 
 scalar_t__ FUNC3 (struct drm_display_mode const*) ; 
 scalar_t__ FUNC4 (struct edid*,int*) ; 

__attribute__((used)) static bool
FUNC5(const struct drm_display_mode *mode, struct edid *edid,
	      struct detailed_timing *timing)
{
	u32 max_clock;
	u8 *t = (u8 *)timing;

	if (!FUNC1(mode, edid, t))
		return false;

	if (!FUNC2(mode, edid, t))
		return false;

	if ((max_clock = FUNC4(edid, t)))
		if (mode->clock > max_clock)
			return false;

	/* 1.4 max horizontal check */
	if (edid->revision >= 4 && t[10] == 0x04)
		if (t[13] && mode->hdisplay > 8 * (t[13] + (256 * (t[12]&0x3))))
			return false;

	if (FUNC3(mode) && !FUNC0(edid))
		return false;

	return true;
}