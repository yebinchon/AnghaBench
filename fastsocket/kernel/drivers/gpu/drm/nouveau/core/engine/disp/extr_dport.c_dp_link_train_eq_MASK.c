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
struct dp_state {int* stat; int link_nr; } ;

/* Variables and functions */
 int DPCD_LS02_LANE0_CHANNEL_EQ_DONE ; 
 int DPCD_LS02_LANE0_CR_DONE ; 
 int DPCD_LS02_LANE0_SYMBOL_LOCKED ; 
 int DPCD_LS04_INTERLANE_ALIGN_DONE ; 
 scalar_t__ FUNC0 (struct dp_state*) ; 
 scalar_t__ FUNC1 (struct dp_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dp_state*,int) ; 

__attribute__((used)) static int
FUNC3(struct dp_state *dp)
{
	bool eq_done, cr_done = true;
	int tries = 0, i;

	FUNC2(dp, 2);

	do {
		if (FUNC1(dp, 400))
			break;

		eq_done = !!(dp->stat[2] & DPCD_LS04_INTERLANE_ALIGN_DONE);
		for (i = 0; i < dp->link_nr && eq_done; i++) {
			u8 lane = (dp->stat[i >> 1] >> ((i & 1) * 4)) & 0xf;
			if (!(lane & DPCD_LS02_LANE0_CR_DONE))
				cr_done = false;
			if (!(lane & DPCD_LS02_LANE0_CHANNEL_EQ_DONE) ||
			    !(lane & DPCD_LS02_LANE0_SYMBOL_LOCKED))
				eq_done = false;
		}

		if (FUNC0(dp))
			break;
	} while (!eq_done && cr_done && ++tries <= 5);

	return eq_done ? 0 : -1;
}