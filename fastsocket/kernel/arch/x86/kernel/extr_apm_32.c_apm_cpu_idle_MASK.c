#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ forbid_idle; } ;
struct TYPE_3__ {unsigned int stime; } ;

/* Variables and functions */
 unsigned int IDLE_CALC_LIMIT ; 
 unsigned int IDLE_LEAKY_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_2__ apm_info ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int idle_period ; 
 unsigned int idle_threshold ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	static int use_apm_idle; /* = 0 */
	static unsigned int last_jiffies; /* = 0 */
	static unsigned int last_stime; /* = 0 */

	int apm_idle_done = 0;
	unsigned int jiffies_since_last_check = jiffies - last_jiffies;
	unsigned int bucket;

recalc:
	if (jiffies_since_last_check > IDLE_CALC_LIMIT) {
		use_apm_idle = 0;
		last_jiffies = jiffies;
		last_stime = current->stime;
	} else if (jiffies_since_last_check > idle_period) {
		unsigned int idle_percentage;

		idle_percentage = current->stime - last_stime;
		idle_percentage *= 100;
		idle_percentage /= jiffies_since_last_check;
		use_apm_idle = (idle_percentage > idle_threshold);
		if (apm_info.forbid_idle)
			use_apm_idle = 0;
		last_jiffies = jiffies;
		last_stime = current->stime;
	}

	bucket = IDLE_LEAKY_MAX;

	while (!FUNC5()) {
		if (use_apm_idle) {
			unsigned int t;

			t = jiffies;
			switch (FUNC1()) {
			case 0:
				apm_idle_done = 1;
				if (t != jiffies) {
					if (bucket) {
						bucket = IDLE_LEAKY_MAX;
						continue;
					}
				} else if (bucket) {
					bucket--;
					continue;
				}
				break;
			case 1:
				apm_idle_done = 1;
				break;
			default: /* BIOS refused */
				break;
			}
		}
		if (&original_pm_idle)
			FUNC6();
		else
			FUNC2();
		FUNC3();
		jiffies_since_last_check = jiffies - last_jiffies;
		if (jiffies_since_last_check > idle_period)
			goto recalc;
	}

	if (apm_idle_done)
		FUNC0();

	FUNC4();
}