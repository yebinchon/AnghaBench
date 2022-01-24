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
typedef  int u32 ;
struct fc_lport {unsigned int mfs; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame_header {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FC_MAX_FRAME ; 
 int FC_MIN_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct fc_lport *lport, u32 mfs)
{
	unsigned int old_mfs;
	int rc = -EINVAL;

	FUNC1(&lport->lp_mutex);

	old_mfs = lport->mfs;

	if (mfs >= FC_MIN_MAX_FRAME) {
		mfs &= ~3;
		if (mfs > FC_MAX_FRAME)
			mfs = FC_MAX_FRAME;
		mfs -= sizeof(struct fc_frame_header);
		lport->mfs = mfs;
		rc = 0;
	}

	if (!rc && mfs < old_mfs)
		FUNC0(lport);

	FUNC2(&lport->lp_mutex);

	return rc;
}