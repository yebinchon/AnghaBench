#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  badfrmnum; int /*<<< orphan*/  badfrminf; int /*<<< orphan*/  numrcvfrm; int /*<<< orphan*/  numosffrm; int /*<<< orphan*/  numtxmfrm; } ;
struct bfi_diag_lb_rsp_s {TYPE_1__ res; } ;
struct TYPE_4__ {scalar_t__ lock; int /*<<< orphan*/  status; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct bfa_diag_loopback_result_s* result; } ;
struct bfa_fcdiag_s {TYPE_2__ lb; } ;
struct bfa_diag_loopback_result_s {int /*<<< orphan*/  status; void* badfrmnum; void* badfrminf; void* numrcvfrm; void* numosffrm; void* numtxmfrm; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcdiag_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcdiag_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcdiag_s *fcdiag,
			struct bfi_diag_lb_rsp_s *rsp)
{
	struct bfa_diag_loopback_result_s *res = fcdiag->lb.result;

	res->numtxmfrm  = FUNC0(rsp->res.numtxmfrm);
	res->numosffrm  = FUNC0(rsp->res.numosffrm);
	res->numrcvfrm  = FUNC0(rsp->res.numrcvfrm);
	res->badfrminf  = FUNC0(rsp->res.badfrminf);
	res->badfrmnum  = FUNC0(rsp->res.badfrmnum);
	res->status     = rsp->res.status;
	fcdiag->lb.status = rsp->res.status;
	FUNC2(fcdiag, fcdiag->lb.status);
	fcdiag->lb.cbfn(fcdiag->lb.cbarg, fcdiag->lb.status);
	fcdiag->lb.lock = 0;
	FUNC1(fcdiag);
}