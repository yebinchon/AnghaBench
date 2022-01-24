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
#define  BFA_RPORT_SM_DELETE 131 
#define  BFA_RPORT_SM_FWRSP 130 
#define  BFA_RPORT_SM_HWFAIL 129 
#define  BFA_RPORT_SM_OFFLINE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  bfa_rport_sm_delete_pending ; 
 int /*<<< orphan*/  bfa_rport_sm_iocdisable ; 
 int /*<<< orphan*/  bfa_rport_sm_offline_pending ; 
 int /*<<< orphan*/  bfa_rport_sm_online ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_fwc_del ; 
 int /*<<< orphan*/  sm_fwc_hwf ; 
 int /*<<< orphan*/  sm_fwc_off ; 
 int /*<<< orphan*/  sm_fwc_rsp ; 
 int /*<<< orphan*/  sm_fwc_unexp ; 

__attribute__((used)) static void
FUNC5(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
	FUNC4(rp->bfa, rp->rport_tag);
	FUNC4(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_FWRSP:
		FUNC3(rp, sm_fwc_rsp);
		FUNC2(rp, bfa_rport_sm_online);
		FUNC0(rp);
		break;

	case BFA_RPORT_SM_DELETE:
		FUNC3(rp, sm_fwc_del);
		FUNC2(rp, bfa_rport_sm_delete_pending);
		break;

	case BFA_RPORT_SM_OFFLINE:
		FUNC3(rp, sm_fwc_off);
		FUNC2(rp, bfa_rport_sm_offline_pending);
		break;

	case BFA_RPORT_SM_HWFAIL:
		FUNC3(rp, sm_fwc_hwf);
		FUNC2(rp, bfa_rport_sm_iocdisable);
		break;

	default:
		FUNC3(rp, sm_fwc_unexp);
		FUNC1(rp->bfa, event);
	}
}