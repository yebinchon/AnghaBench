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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct detailed_mode_closure {int modes; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; struct edid* member_1; struct drm_connector* member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_inferred_modes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct detailed_mode_closure*) ; 
 scalar_t__ FUNC1 (struct edid*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct drm_connector *connector, struct edid *edid)
{
	struct detailed_mode_closure closure = {
		connector, edid, 0, 0, 0
	};

	if (FUNC1(edid, 1, 0))
		FUNC0((u8 *)edid, do_inferred_modes,
					    &closure);

	return closure.modes;
}