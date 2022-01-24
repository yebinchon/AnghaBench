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
typedef  size_t u32 ;
struct pulse_event {scalar_t__ ts; int /*<<< orphan*/  freq; } ;
struct pri_sequence {int /*<<< orphan*/  count_falses; int /*<<< orphan*/  count; int /*<<< orphan*/  pri; } ;
struct pri_detector {TYPE_1__* rs; struct pri_sequence* (* add_pulse ) (struct pri_detector*,struct pulse_event*) ;} ;
struct dfs_pattern_detector {scalar_t__ region; scalar_t__ last_pulse_ts; size_t num_radar_types; int /*<<< orphan*/  ah; } ;
struct channel_detector {struct pri_detector** detectors; } ;
struct TYPE_2__ {int /*<<< orphan*/  type_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 scalar_t__ NL80211_DFS_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct channel_detector* FUNC2 (struct dfs_pattern_detector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dfs_pattern_detector*,struct channel_detector*) ; 
 int /*<<< orphan*/  FUNC4 (struct dfs_pattern_detector*) ; 
 struct pri_sequence* FUNC5 (struct pri_detector*,struct pulse_event*) ; 

__attribute__((used)) static bool
FUNC6(struct dfs_pattern_detector *dpd, struct pulse_event *event)
{
	u32 i;
	struct channel_detector *cd;

	/*
	 * pulses received for a non-supported or un-initialized
	 * domain are treated as detected radars for fail-safety
	 */
	if (dpd->region == NL80211_DFS_UNSET)
		return true;

	cd = FUNC2(dpd, event->freq);
	if (cd == NULL)
		return false;

	dpd->last_pulse_ts = event->ts;
	/* reset detector on time stamp wraparound, caused by TSF reset */
	if (event->ts < dpd->last_pulse_ts)
		FUNC4(dpd);

	/* do type individual pattern matching */
	for (i = 0; i < dpd->num_radar_types; i++) {
		struct pri_detector *pd = cd->detectors[i];
		struct pri_sequence *ps = pd->add_pulse(pd, event);
		if (ps != NULL) {
			FUNC1(FUNC0(dpd->ah), DFS,
				"DFS: radar found on freq=%d: id=%d, pri=%d, "
				"count=%d, count_false=%d\n",
				event->freq, pd->rs->type_id,
				ps->pri, ps->count, ps->count_falses);
			FUNC3(dpd, cd);
			return true;
		}
	}
	return false;
}