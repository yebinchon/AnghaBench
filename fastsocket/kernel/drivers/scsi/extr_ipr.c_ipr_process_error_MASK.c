#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ipr_ioa_cfg {TYPE_10__* pdev; scalar_t__ sis64; } ;
struct TYPE_17__ {int /*<<< orphan*/  fd_ioasc; } ;
struct TYPE_16__ {int /*<<< orphan*/  fd_ioasc; } ;
struct TYPE_18__ {TYPE_6__ error; TYPE_5__ error64; } ;
struct TYPE_19__ {TYPE_7__ u; } ;
struct ipr_hostrcb {int /*<<< orphan*/  queue; TYPE_8__ hcam; } ;
struct TYPE_13__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_14__ {TYPE_2__ hdr; } ;
struct TYPE_15__ {TYPE_3__ ioasa; } ;
struct TYPE_12__ {struct ipr_hostrcb* hostrcb; } ;
struct ipr_cmnd {TYPE_9__* hrrq; int /*<<< orphan*/  queue; TYPE_4__ s; TYPE_1__ u; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_20__ {int /*<<< orphan*/  hrrq_free_q; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPR_HCAM_CDB_OP_CODE_LOG_DATA ; 
 scalar_t__ IPR_IOASC_IOA_WAS_RESET ; 
 scalar_t__ IPR_IOASC_NR_IOA_RESET_REQUIRED ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_ABBREV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,struct ipr_hostrcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,struct ipr_hostrcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct ipr_hostrcb *hostrcb = ipr_cmd->u.hostrcb;
	u32 ioasc = FUNC0(ipr_cmd->s.ioasa.hdr.ioasc);
	u32 fd_ioasc;

	if (ioa_cfg->sis64)
		fd_ioasc = FUNC0(hostrcb->hcam.u.error64.fd_ioasc);
	else
		fd_ioasc = FUNC0(hostrcb->hcam.u.error.fd_ioasc);

	FUNC6(&hostrcb->queue);
	FUNC5(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);

	if (!ioasc) {
		FUNC2(ioa_cfg, hostrcb);
		if (fd_ioasc == IPR_IOASC_NR_IOA_RESET_REQUIRED)
			FUNC3(ioa_cfg, IPR_SHUTDOWN_ABBREV);
	} else if (ioasc != IPR_IOASC_IOA_WAS_RESET) {
		FUNC1(&ioa_cfg->pdev->dev,
			"Host RCB failed with IOASC: 0x%08X\n", ioasc);
	}

	FUNC4(ioa_cfg, IPR_HCAM_CDB_OP_CODE_LOG_DATA, hostrcb);
}