#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfa_ioim_s {int iotag; int /*<<< orphan*/  bfa; TYPE_1__* fcpim; int /*<<< orphan*/  qe; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int /*<<< orphan*/  ioim_resfree_q; } ;

/* Variables and functions */
#define  BFA_IOIM_SM_CLEANUP 131 
#define  BFA_IOIM_SM_FREE 130 
#define  BFA_IOIM_SM_HCB 129 
#define  BFA_IOIM_SM_HWFAIL 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_resfree ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	FUNC3(ioim->bfa, ioim->iotag);
	FUNC3(ioim->bfa, event);

	switch (event) {
	case BFA_IOIM_SM_HCB:
		FUNC2(ioim, bfa_ioim_sm_resfree);
		FUNC5(&ioim->qe);
		FUNC4(&ioim->qe, &ioim->fcpim->ioim_resfree_q);
		break;

	case BFA_IOIM_SM_FREE:
		FUNC2(ioim, bfa_ioim_sm_hcb);
		break;

	case BFA_IOIM_SM_CLEANUP:
		FUNC0(ioim);
		break;

	case BFA_IOIM_SM_HWFAIL:
		FUNC2(ioim, bfa_ioim_sm_hcb);
		break;

	default:
		FUNC1(ioim->bfa, event);
	}
}