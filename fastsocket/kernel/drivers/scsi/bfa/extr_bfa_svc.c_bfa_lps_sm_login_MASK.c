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
struct bfa_lps_s {int bfa_tag; int fport; int lp_pid; TYPE_1__* bfa; int /*<<< orphan*/  fdisc; int /*<<< orphan*/  status; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; } ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 131 
#define  BFA_LPS_SM_FWRSP 130 
#define  BFA_LPS_SM_OFFLINE 129 
#define  BFA_LPS_SM_SET_N2N_PID 128 
 int /*<<< orphan*/  BFA_PL_EID_LOGIN ; 
 int /*<<< orphan*/  BFA_PL_MID_LPS ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  bfa_lps_sm_online ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_lps_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
	FUNC5(lps->bfa, lps->bfa_tag);
	FUNC5(lps->bfa, event);

	switch (event) {
	case BFA_LPS_SM_FWRSP:
		if (lps->status == BFA_STATUS_OK) {
			FUNC4(lps, bfa_lps_sm_online);
			if (lps->fdisc)
				FUNC1(lps->bfa->plog, BFA_PL_MID_LPS,
					BFA_PL_EID_LOGIN, 0, "FDISC Accept");
			else
				FUNC1(lps->bfa->plog, BFA_PL_MID_LPS,
					BFA_PL_EID_LOGIN, 0, "FLOGI Accept");
			/* If N2N, send the assigned PID to FW */
			FUNC5(lps->bfa, lps->fport);
			FUNC5(lps->bfa, lps->lp_pid);

			if (!lps->fport && lps->lp_pid)
				FUNC3(lps, BFA_LPS_SM_SET_N2N_PID);
		} else {
			FUNC4(lps, bfa_lps_sm_init);
			if (lps->fdisc)
				FUNC1(lps->bfa->plog, BFA_PL_MID_LPS,
					BFA_PL_EID_LOGIN, 0,
					"FDISC Fail (RJT or timeout)");
			else
				FUNC1(lps->bfa->plog, BFA_PL_MID_LPS,
					BFA_PL_EID_LOGIN, 0,
					"FLOGI Fail (RJT or timeout)");
		}
		FUNC0(lps);
		break;

	case BFA_LPS_SM_OFFLINE:
	case BFA_LPS_SM_DELETE:
		FUNC4(lps, bfa_lps_sm_init);
		break;

	case BFA_LPS_SM_SET_N2N_PID:
		FUNC5(lps->bfa, lps->fport);
		FUNC5(lps->bfa, lps->lp_pid);
		break;

	default:
		FUNC2(lps->bfa, event);
	}
}