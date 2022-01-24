#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ref_count; TYPE_1__* fcport; } ;
typedef  TYPE_2__ srb_t ;
struct TYPE_6__ {int /*<<< orphan*/  vha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct scsi_cmnd* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int ql2xextended_error_logging ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,char*,TYPE_2__*,struct scsi_cmnd*) ; 
 int ql_dbg_io ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 

void
FUNC7(void *data, void *ptr, int res)
{
	struct qla_hw_data *ha = (struct qla_hw_data *)data;
	srb_t *sp = (srb_t*)ptr;
	struct scsi_cmnd *cmd = FUNC1(sp);

	cmd->result = res;

	if (FUNC3(&sp->ref_count) == 0) {
		FUNC4(ql_dbg_io, sp->fcport->vha, 0x3015,
		    "SP reference-count to ZERO -- sp=%p cmd=%p.\n",
		    sp, FUNC1(sp));
		if (ql2xextended_error_logging & ql_dbg_io)
			FUNC0();
		return;
	}
	if (!FUNC2(&sp->ref_count))
		return;

	FUNC5(ha, sp);
	cmd->scsi_done(cmd);
}