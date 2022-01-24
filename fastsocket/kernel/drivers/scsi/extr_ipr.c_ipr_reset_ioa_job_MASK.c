#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ipr_ioa_cfg {struct ipr_cmnd* reset_cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_8__ {TYPE_2__ hdr; } ;
struct TYPE_7__ {TYPE_4__ ioasa; } ;
struct ipr_cmnd {scalar_t__ (* job_step_failed ) (struct ipr_cmnd*) ;scalar_t__ (* job_step ) (struct ipr_cmnd*) ;TYPE_1__* hrrq; int /*<<< orphan*/  queue; TYPE_3__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IPR_RC_JOB_CONTINUE ; 
 scalar_t__ IPR_RC_JOB_RETURN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_cmnd*) ; 
 scalar_t__ FUNC3 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ipr_cmnd*) ; 
 scalar_t__ FUNC6 (struct ipr_cmnd*) ; 

__attribute__((used)) static void FUNC7(struct ipr_cmnd *ipr_cmd)
{
	u32 rc, ioasc;
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

	do {
		ioasc = FUNC1(ipr_cmd->s.ioasa.hdr.ioasc);

		if (ioa_cfg->reset_cmd != ipr_cmd) {
			/*
			 * We are doing nested adapter resets and this is
			 * not the current reset job.
			 */
			FUNC4(&ipr_cmd->queue,
					&ipr_cmd->hrrq->hrrq_free_q);
			return;
		}

		if (FUNC0(ioasc)) {
			rc = ipr_cmd->job_step_failed(ipr_cmd);
			if (rc == IPR_RC_JOB_RETURN)
				return;
		}

		FUNC2(ipr_cmd);
		ipr_cmd->job_step_failed = ipr_reset_cmd_failed;
		rc = ipr_cmd->job_step(ipr_cmd);
	} while(rc == IPR_RC_JOB_CONTINUE);
}