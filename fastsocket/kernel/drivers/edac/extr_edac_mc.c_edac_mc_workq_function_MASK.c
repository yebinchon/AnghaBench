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
struct work_struct {int dummy; } ;
struct mem_ctl_info {scalar_t__ op_state; int /*<<< orphan*/  work; int /*<<< orphan*/  (* edac_check ) (struct mem_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 scalar_t__ OP_OFFLINE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  edac_workqueue ; 
 int /*<<< orphan*/  mem_ctls_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_ctl_info*) ; 
 struct delayed_work* FUNC7 (struct work_struct*) ; 
 struct mem_ctl_info* FUNC8 (struct delayed_work*) ; 

__attribute__((used)) static void FUNC9(struct work_struct *work_req)
{
	struct delayed_work *d_work = FUNC7(work_req);
	struct mem_ctl_info *mci = FUNC8(d_work);

	FUNC3(&mem_ctls_mutex);

	/* if this control struct has movd to offline state, we are done */
	if (mci->op_state == OP_OFFLINE) {
		FUNC4(&mem_ctls_mutex);
		return;
	}

	/* Only poll controllers that are running polled and have a check */
	if (FUNC0() && (mci->edac_check != NULL))
		mci->edac_check(mci);

	FUNC4(&mem_ctls_mutex);

	/* Reschedule */
	FUNC5(edac_workqueue, &mci->work,
			FUNC2(FUNC1()));
}