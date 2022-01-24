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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_cb_pending_q_s {int dummy; } ;
struct bfa_bsg_fcport_stats_s {scalar_t__ status; int /*<<< orphan*/  stats; } ;
typedef  int /*<<< orphan*/  bfa_cb_cbfn_t ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct bfa_cb_pending_q_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_cb_pending_q_s*,int /*<<< orphan*/ ,struct bfad_hal_comp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,scalar_t__) ; 
 scalar_t__ bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_fcport_stats_s *iocmd =
				(struct bfa_bsg_fcport_stats_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long	flags;
	struct bfa_cb_pending_q_s cb_qe;

	FUNC3(&fcomp.comp);
	FUNC1(&cb_qe, (bfa_cb_cbfn_t)bfad_hcb_comp,
			   &fcomp, &iocmd->stats);
	FUNC4(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa, &cb_qe);
	FUNC5(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK) {
		FUNC2(bfad, iocmd->status);
		goto out;
	}
	FUNC6(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}