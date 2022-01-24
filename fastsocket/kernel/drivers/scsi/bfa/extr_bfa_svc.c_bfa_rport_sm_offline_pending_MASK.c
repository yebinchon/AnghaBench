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
struct bfa_rport_s {int rport_tag; int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;

/* Variables and functions */
#define  BFA_RPORT_SM_DELETE 130 
#define  BFA_RPORT_SM_FWRSP 129 
#define  BFA_RPORT_SM_HWFAIL 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  bfa_rport_sm_delete_pending ; 
 int /*<<< orphan*/  bfa_rport_sm_fwdelete ; 
 int /*<<< orphan*/  bfa_rport_sm_fwdelete_qfull ; 
 int /*<<< orphan*/  bfa_rport_sm_iocdisable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_offp_del ; 
 int /*<<< orphan*/  sm_offp_fwrsp ; 
 int /*<<< orphan*/  sm_offp_hwf ; 
 int /*<<< orphan*/  sm_offp_unexp ; 

__attribute__((used)) static void
FUNC6(struct bfa_rport_s *rp,
				 enum bfa_rport_event event)
{
	FUNC5(rp->bfa, rp->rport_tag);
	FUNC5(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_FWRSP:
		FUNC4(rp, sm_offp_fwrsp);
		if (FUNC1(rp))
			FUNC3(rp, bfa_rport_sm_fwdelete);
		else
			FUNC3(rp, bfa_rport_sm_fwdelete_qfull);
		break;

	case BFA_RPORT_SM_DELETE:
		FUNC4(rp, sm_offp_del);
		FUNC3(rp, bfa_rport_sm_delete_pending);
		break;

	case BFA_RPORT_SM_HWFAIL:
		FUNC4(rp, sm_offp_hwf);
		FUNC3(rp, bfa_rport_sm_iocdisable);
		FUNC0(rp);
		break;

	default:
		FUNC4(rp, sm_offp_unexp);
		FUNC2(rp->bfa, event);
	}
}