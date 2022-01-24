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
struct bfa_lps_s {int bfa_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  wqe; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 131 
#define  BFA_LPS_SM_OFFLINE 130 
#define  BFA_LPS_SM_RESUME 129 
#define  BFA_LPS_SM_RX_CVL 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  bfa_lps_sm_login ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
	FUNC4(lps->bfa, lps->bfa_tag);
	FUNC4(lps->bfa, event);

	switch (event) {
	case BFA_LPS_SM_RESUME:
		FUNC3(lps, bfa_lps_sm_login);
		FUNC0(lps);
		break;

	case BFA_LPS_SM_OFFLINE:
	case BFA_LPS_SM_DELETE:
		FUNC3(lps, bfa_lps_sm_init);
		FUNC1(&lps->wqe);
		break;

	case BFA_LPS_SM_RX_CVL:
		/*
		 * Login was not even sent out; so when getting out
		 * of this state, it will appear like a login retry
		 * after Clear virtual link
		 */
		break;

	default:
		FUNC2(lps->bfa, event);
	}
}