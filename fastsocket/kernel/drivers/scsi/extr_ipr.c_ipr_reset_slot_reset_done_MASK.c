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
struct ipr_cmnd {int /*<<< orphan*/  job_step; TYPE_1__* ioa_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  IPR_WAIT_FOR_BIST_TIMEOUT ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  ipr_reset_bist_done ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_deassert_reset ; 

__attribute__((used)) static int FUNC2(struct ipr_cmnd *ipr_cmd)
{
	ENTER;
	FUNC1(ipr_cmd->ioa_cfg->pdev, pcie_deassert_reset);
	ipr_cmd->job_step = ipr_reset_bist_done;
	FUNC0(ipr_cmd, IPR_WAIT_FOR_BIST_TIMEOUT);
	LEAVE;
	return IPR_RC_JOB_RETURN;
}