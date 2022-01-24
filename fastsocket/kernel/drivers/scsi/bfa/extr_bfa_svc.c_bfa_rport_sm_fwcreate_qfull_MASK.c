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
struct bfa_rport_s {int rport_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;

/* Variables and functions */
#define  BFA_RPORT_SM_DELETE 131 
#define  BFA_RPORT_SM_HWFAIL 130 
#define  BFA_RPORT_SM_OFFLINE 129 
#define  BFA_RPORT_SM_QRESUME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  bfa_rport_sm_fwcreate ; 
 int /*<<< orphan*/  bfa_rport_sm_iocdisable ; 
 int /*<<< orphan*/  bfa_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_rport_sm_uninit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_fwc_del ; 
 int /*<<< orphan*/  sm_fwc_hwf ; 
 int /*<<< orphan*/  sm_fwc_off ; 
 int /*<<< orphan*/  sm_fwc_unexp ; 

__attribute__((used)) static void
FUNC8(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
	FUNC7(rp->bfa, rp->rport_tag);
	FUNC7(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_QRESUME:
		FUNC5(rp, bfa_rport_sm_fwcreate);
		FUNC3(rp);
		break;

	case BFA_RPORT_SM_DELETE:
		FUNC6(rp, sm_fwc_del);
		FUNC5(rp, bfa_rport_sm_uninit);
		FUNC0(&rp->reqq_wait);
		FUNC1(rp);
		break;

	case BFA_RPORT_SM_OFFLINE:
		FUNC6(rp, sm_fwc_off);
		FUNC5(rp, bfa_rport_sm_offline);
		FUNC0(&rp->reqq_wait);
		FUNC2(rp);
		break;

	case BFA_RPORT_SM_HWFAIL:
		FUNC6(rp, sm_fwc_hwf);
		FUNC5(rp, bfa_rport_sm_iocdisable);
		FUNC0(&rp->reqq_wait);
		break;

	default:
		FUNC6(rp, sm_fwc_unexp);
		FUNC4(rp->bfa, event);
	}
}