#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct chan_freq_power {int dummy; } ;
struct TYPE_3__ {scalar_t__ region; int cfp_no_BG; struct chan_freq_power* cfp_BG; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 TYPE_1__* region_cfp_table ; 

struct chan_freq_power *FUNC5(u8 region, int *cfp_no)
{
	int i, end;

	FUNC1(LBS_DEB_MAIN);

	end = FUNC0(region_cfp_table);

	for (i = 0; i < end ; i++) {
		FUNC4("region_cfp_table[i].region=%d\n",
			region_cfp_table[i].region);
		if (region_cfp_table[i].region == region) {
			*cfp_no = region_cfp_table[i].cfp_no_BG;
			FUNC2(LBS_DEB_MAIN);
			return region_cfp_table[i].cfp_BG;
		}
	}

	FUNC3(LBS_DEB_MAIN, "ret NULL");
	return NULL;
}