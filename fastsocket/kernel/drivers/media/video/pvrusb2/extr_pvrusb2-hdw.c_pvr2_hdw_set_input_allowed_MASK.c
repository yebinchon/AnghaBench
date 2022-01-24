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
struct pvr2_hdw {unsigned int input_allowed_mask; unsigned int input_avail_mask; int input_val; int /*<<< orphan*/  big_lock; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*,unsigned int) ; 

int FUNC3(struct pvr2_hdw *hdw,
			       unsigned int change_mask,
			       unsigned int change_val)
{
	int ret = 0;
	unsigned int nv,m,idx;
	FUNC1(hdw->big_lock);
	do {
		nv = hdw->input_allowed_mask & ~change_mask;
		nv |= (change_val & change_mask);
		nv &= hdw->input_avail_mask;
		if (!nv) {
			/* No legal modes left; return error instead. */
			ret = -EPERM;
			break;
		}
		hdw->input_allowed_mask = nv;
		if ((1 << hdw->input_val) & hdw->input_allowed_mask) {
			/* Current mode is still in the allowed mask, so
			   we're done. */
			break;
		}
		/* Select and switch to a mode that is still in the allowed
		   mask */
		if (!hdw->input_allowed_mask) {
			/* Nothing legal; give up */
			break;
		}
		m = hdw->input_allowed_mask;
		for (idx = 0; idx < (sizeof(m) << 3); idx++) {
			if (!((1 << idx) & m)) continue;
			FUNC2(hdw,idx);
			break;
		}
	} while (0);
	FUNC0(hdw->big_lock);
	return ret;
}