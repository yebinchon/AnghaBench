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
typedef  int /*<<< orphan*/  u32 ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  residual_data_len; int /*<<< orphan*/  ioasc; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct TYPE_7__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int /*<<< orphan*/  queue; TYPE_3__ s; struct scsi_cmnd* scsi_cmd; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,struct ipr_cmnd*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC10(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
	u32 ioasc = FUNC1(ipr_cmd->s.ioasa.hdr.ioasc);
	unsigned long hrrq_flags;

	FUNC6(scsi_cmd, FUNC1(ipr_cmd->s.ioasa.hdr.residual_data_len));

	if (FUNC3(FUNC0(ioasc) == 0)) {
		FUNC5(scsi_cmd);

		FUNC7(ipr_cmd->hrrq->lock, hrrq_flags);
		FUNC4(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
		scsi_cmd->scsi_done(scsi_cmd);
		FUNC8(ipr_cmd->hrrq->lock, hrrq_flags);
	} else {
		FUNC7(ipr_cmd->hrrq->lock, hrrq_flags);
		FUNC2(ioa_cfg, ipr_cmd);
		FUNC8(ipr_cmd->hrrq->lock, hrrq_flags);
	}
}