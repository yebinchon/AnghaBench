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
struct ipr_ioa_cfg {scalar_t__ cfg_locked; int /*<<< orphan*/  pdev; } ;
struct ipr_cmnd {int /*<<< orphan*/  job_step; struct ipr_ioa_cfg* ioa_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int IPR_RC_JOB_CONTINUE ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  ipr_reset_restore_cfg_space ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

	ENTER;
	if (ioa_cfg->cfg_locked)
		FUNC0(ioa_cfg->pdev);
	ioa_cfg->cfg_locked = 0;
	ipr_cmd->job_step = ipr_reset_restore_cfg_space;
	LEAVE;
	return IPR_RC_JOB_CONTINUE;
}