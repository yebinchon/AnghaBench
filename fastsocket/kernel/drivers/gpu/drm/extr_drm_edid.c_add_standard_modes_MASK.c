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
typedef  int /*<<< orphan*/  u8 ;
struct edid {int /*<<< orphan*/  revision; int /*<<< orphan*/ * standard_timings; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct detailed_mode_closure {int modes; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; struct edid* member_1; struct drm_connector* member_0; } ;

/* Variables and functions */
 int EDID_STD_TIMINGS ; 
 int /*<<< orphan*/  do_standard_modes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct detailed_mode_closure*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC2 (struct drm_connector*,struct edid*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct edid*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct drm_connector *connector, struct edid *edid)
{
	int i, modes = 0;
	struct detailed_mode_closure closure = {
		connector, edid, 0, 0, 0
	};

	for (i = 0; i < EDID_STD_TIMINGS; i++) {
		struct drm_display_mode *newmode;

		newmode = FUNC2(connector, edid,
				       &edid->standard_timings[i],
				       edid->revision);
		if (newmode) {
			FUNC1(connector, newmode);
			modes++;
		}
	}

	if (FUNC3(edid, 1, 0))
		FUNC0((u8 *)edid, do_standard_modes,
					    &closure);

	/* XXX should also look for standard codes in VTB blocks */

	return modes + closure.modes;
}