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
struct bfa_fcxp_s {int /*<<< orphan*/  send_cbfn; int /*<<< orphan*/  reqq_wqe; scalar_t__ reqq_waiting; } ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  bfa_fcxp_null_comp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct bfa_fcxp_s *fcxp)
{
	/*
	 * If waiting for room in request queue, cancel reqq wait
	 * and free fcxp.
	 */
	if (fcxp->reqq_waiting) {
		fcxp->reqq_waiting = BFA_FALSE;
		FUNC1(&fcxp->reqq_wqe);
		FUNC0(fcxp);
		return;
	}

	fcxp->send_cbfn = bfa_fcxp_null_comp;
}