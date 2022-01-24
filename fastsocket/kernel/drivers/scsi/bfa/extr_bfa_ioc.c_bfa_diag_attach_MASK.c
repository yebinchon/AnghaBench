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
struct bfa_trc_mod_s {int dummy; } ;
struct bfa_ioc_s {int /*<<< orphan*/  notify_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  qe; } ;
struct bfa_diag_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; int /*<<< orphan*/  cbfn_beacon; int /*<<< orphan*/ * result; int /*<<< orphan*/ * cbarg; int /*<<< orphan*/ * cbfn; scalar_t__ block; struct bfa_trc_mod_s* trcmod; void* dev; } ;
typedef  int /*<<< orphan*/  bfa_cb_diag_beacon_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_DIAG ; 
 int /*<<< orphan*/  bfa_diag_intr ; 
 int /*<<< orphan*/  bfa_diag_notify ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_diag_s*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct bfa_diag_s*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct bfa_diag_s *diag, struct bfa_ioc_s *ioc, void *dev,
	bfa_cb_diag_beacon_t cbfn_beacon, struct bfa_trc_mod_s *trcmod)
{
	diag->dev = dev;
	diag->ioc = ioc;
	diag->trcmod = trcmod;

	diag->block = 0;
	diag->cbfn = NULL;
	diag->cbarg = NULL;
	diag->result = NULL;
	diag->cbfn_beacon = cbfn_beacon;

	FUNC0(diag->ioc, BFI_MC_DIAG, bfa_diag_intr, diag);
	FUNC2(&diag->ioc_notify);
	FUNC1(&diag->ioc_notify, bfa_diag_notify, diag);
	FUNC3(&diag->ioc_notify.qe, &diag->ioc->notify_q);
}