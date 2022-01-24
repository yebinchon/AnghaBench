#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct TYPE_4__ {scalar_t__ topology; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_1__ cfg; } ;
struct bfa_cb_pending_q_s {int dummy; } ;
struct bfa_bsg_gen_s {scalar_t__ status; } ;
typedef  int /*<<< orphan*/  bfa_cb_cbfn_t ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (TYPE_2__*) ; 
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct bfa_cb_pending_q_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_cb_pending_q_s*,int /*<<< orphan*/ ,struct bfad_hal_comp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfad_s*,scalar_t__) ; 
 scalar_t__ bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long	flags;
	struct bfa_cb_pending_q_s cb_qe;
	struct bfa_fcport_s *fcport = FUNC0(&bfad->bfa);

	FUNC6(&fcomp.comp);
	FUNC4(&cb_qe, (bfa_cb_cbfn_t)bfad_hcb_comp,
			   &fcomp, NULL);

	FUNC7(&bfad->bfad_lock, flags);
	FUNC1(!FUNC3(&bfad->bfa.ioc));
	if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
		(fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
		iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
	else
		iocmd->status = FUNC2(&bfad->bfa, &cb_qe);
	FUNC8(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK) {
		FUNC5(bfad, iocmd->status);
		goto out;
	}
	FUNC9(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}