#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  set_uproc_interrupt_reg32; } ;
struct ipr_ioa_cfg {scalar_t__ cfg_locked; int /*<<< orphan*/  pdev; TYPE_2__ regs; TYPE_1__* ipr_chip; } ;
struct TYPE_8__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_9__ {TYPE_3__ hdr; } ;
struct TYPE_10__ {TYPE_4__ ioasa; } ;
struct ipr_cmnd {TYPE_5__ s; struct ipr_ioa_cfg* ioa_cfg; int /*<<< orphan*/  job_step; } ;
struct TYPE_6__ {scalar_t__ bist_method; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  IPR_IOASC_PCI_ACCESS_ERROR ; 
 scalar_t__ IPR_MMIO ; 
 int IPR_RC_JOB_CONTINUE ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  IPR_UPROCI_SIS64_START_BIST ; 
 int /*<<< orphan*/  IPR_WAIT_FOR_BIST_TIMEOUT ; 
 int /*<<< orphan*/  LEAVE ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_BIST ; 
 int /*<<< orphan*/  PCI_BIST_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_reset_bist_done ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	int rc = PCIBIOS_SUCCESSFUL;

	ENTER;
	if (ioa_cfg->ipr_chip->bist_method == IPR_MMIO)
		FUNC4(IPR_UPROCI_SIS64_START_BIST,
		       ioa_cfg->regs.set_uproc_interrupt_reg32);
	else
		rc = FUNC3(ioa_cfg->pdev, PCI_BIST, PCI_BIST_START);

	if (rc == PCIBIOS_SUCCESSFUL) {
		ipr_cmd->job_step = ipr_reset_bist_done;
		FUNC1(ipr_cmd, IPR_WAIT_FOR_BIST_TIMEOUT);
		rc = IPR_RC_JOB_RETURN;
	} else {
		if (ioa_cfg->cfg_locked)
			FUNC2(ipr_cmd->ioa_cfg->pdev);
		ioa_cfg->cfg_locked = 0;
		ipr_cmd->s.ioasa.hdr.ioasc = FUNC0(IPR_IOASC_PCI_ACCESS_ERROR);
		rc = IPR_RC_JOB_CONTINUE;
	}

	LEAVE;
	return rc;
}