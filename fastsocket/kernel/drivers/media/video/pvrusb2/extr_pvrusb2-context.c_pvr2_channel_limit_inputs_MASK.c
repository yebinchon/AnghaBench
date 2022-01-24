#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pvr2_hdw {int dummy; } ;
struct pvr2_channel {unsigned int input_mask; TYPE_1__* mc_head; struct pvr2_channel* mc_next; struct pvr2_hdw* hdw; } ;
struct TYPE_4__ {struct pvr2_channel* mc_first; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 
 unsigned int FUNC4 (struct pvr2_hdw*) ; 
 int FUNC5 (struct pvr2_hdw*,unsigned int,unsigned int) ; 

int FUNC6(struct pvr2_channel *cp,unsigned int cmsk)
{
	unsigned int tmsk,mmsk;
	int ret = 0;
	struct pvr2_channel *p2;
	struct pvr2_hdw *hdw = cp->hdw;

	mmsk = FUNC4(hdw);
	cmsk &= mmsk;
	if (cmsk == cp->input_mask) {
		/* No change; nothing to do */
		return 0;
	}

	FUNC0(cp->mc_head);
	do {
		if (!cmsk) {
			cp->input_mask = 0;
			FUNC2(cp->mc_head);
			break;
		}
		tmsk = mmsk;
		for (p2 = cp->mc_head->mc_first; p2; p2 = p2->mc_next) {
			if (p2 == cp) continue;
			if (!p2->input_mask) continue;
			tmsk &= p2->input_mask;
		}
		if (!(tmsk & cmsk)) {
			ret = -EPERM;
			break;
		}
		tmsk &= cmsk;
		if ((ret = FUNC5(hdw,mmsk,tmsk)) != 0) {
			/* Internal failure changing allowed list; probably
			   should not happen, but react if it does. */
			break;
		}
		cp->input_mask = cmsk;
		FUNC3(hdw);
	} while (0);
	FUNC1(cp->mc_head);
	return ret;
}