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
struct bfa_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ lock; int /*<<< orphan*/  status; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct bfa_dport_s {int dummy; } ;
struct bfa_fcdiag_s {TYPE_1__ lb; struct bfa_dport_s dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_DPORT_SM_HWFAIL ; 
 struct bfa_fcdiag_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_STATUS_IOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcdiag_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcdiag_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bfa_s *bfa)
{
	struct bfa_fcdiag_s *fcdiag = FUNC0(bfa);
	struct bfa_dport_s *dport = &fcdiag->dport;

	FUNC3(fcdiag, fcdiag->lb.lock);
	if (fcdiag->lb.lock) {
		fcdiag->lb.status = BFA_STATUS_IOC_FAILURE;
		fcdiag->lb.cbfn(fcdiag->lb.cbarg, fcdiag->lb.status);
		fcdiag->lb.lock = 0;
		FUNC1(fcdiag);
	}

	FUNC2(dport, BFA_DPORT_SM_HWFAIL);
}