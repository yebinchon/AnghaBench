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
struct ipr_ioa_cfg {scalar_t__ ioa_unit_checked; } ;
struct ipr_cmnd {int /*<<< orphan*/  job_step; struct ipr_ioa_cfg* ioa_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  ipr_reset_alert ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

	ENTER;
	ioa_cfg->ioa_unit_checked = 0;
	FUNC0(ioa_cfg);
	ipr_cmd->job_step = ipr_reset_alert;
	FUNC1(ipr_cmd, 0);

	LEAVE;
	return IPR_RC_JOB_RETURN;
}