#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_19__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_18__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_17__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_16__ {int max; int min; } ;
struct TYPE_15__ {int dot_limit; int /*<<< orphan*/  p2_fast; int /*<<< orphan*/  p2_slow; } ;
struct TYPE_20__ {TYPE_5__ p1; TYPE_4__ m2; TYPE_3__ m1; TYPE_2__ n; TYPE_1__ p2; } ;
typedef  TYPE_6__ intel_limit_t ;
struct TYPE_21__ {int n; scalar_t__ m1; scalar_t__ m2; scalar_t__ p1; scalar_t__ p; scalar_t__ dot; int /*<<< orphan*/  p2; } ;
typedef  TYPE_7__ intel_clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int LVDS ; 
 int PCH_LVDS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,TYPE_6__ const*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,TYPE_7__*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC7(const intel_limit_t *limit, struct drm_crtc *crtc,
			int target, int refclk, intel_clock_t *match_clock,
			intel_clock_t *best_clock)
{
	struct drm_device *dev = crtc->dev;
	intel_clock_t clock;
	int max_n;
	bool found;
	/* approximately equals target * 0.00585 */
	int err_most = (target >> 8) + (target >> 9);
	found = false;

	if (FUNC5(crtc, INTEL_OUTPUT_LVDS)) {
		int lvds_reg;

		if (FUNC0(dev))
			lvds_reg = PCH_LVDS;
		else
			lvds_reg = LVDS;
		if (FUNC4(dev))
			clock.p2 = limit->p2.p2_fast;
		else
			clock.p2 = limit->p2.p2_slow;
	} else {
		if (target < limit->p2.dot_limit)
			clock.p2 = limit->p2.p2_slow;
		else
			clock.p2 = limit->p2.p2_fast;
	}

	FUNC6(best_clock, 0, sizeof(*best_clock));
	max_n = limit->n.max;
	/* based on hardware requirement, prefer smaller n to precision */
	for (clock.n = limit->n.min; clock.n <= max_n; clock.n++) {
		/* based on hardware requirement, prefere larger m1,m2 */
		for (clock.m1 = limit->m1.max;
		     clock.m1 >= limit->m1.min; clock.m1--) {
			for (clock.m2 = limit->m2.max;
			     clock.m2 >= limit->m2.min; clock.m2--) {
				for (clock.p1 = limit->p1.max;
				     clock.p1 >= limit->p1.min; clock.p1--) {
					int this_err;

					FUNC3(dev, refclk, &clock);
					if (!FUNC2(dev, limit,
								&clock))
						continue;
					if (match_clock &&
					    clock.p != match_clock->p)
						continue;

					this_err = FUNC1(clock.dot - target);
					if (this_err < err_most) {
						*best_clock = clock;
						err_most = this_err;
						max_n = clock.n;
						found = true;
					}
				}
			}
		}
	}
	return found;
}