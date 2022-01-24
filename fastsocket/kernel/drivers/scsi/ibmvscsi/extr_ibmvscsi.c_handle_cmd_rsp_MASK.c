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
struct srp_rsp {scalar_t__ opcode; int status; int flags; int /*<<< orphan*/  data_in_res_cnt; int /*<<< orphan*/  data_out_res_cnt; int /*<<< orphan*/  sense_data_len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_9__ {TYPE_3__ srp; } ;
struct srp_event_struct {int /*<<< orphan*/  (* cmnd_done ) (struct scsi_cmnd*) ;TYPE_5__* hostdata; TYPE_4__ iu; struct scsi_cmnd* cmnd; TYPE_2__* xfer_iu; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct srp_rsp rsp; } ;
struct TYPE_7__ {TYPE_1__ srp; } ;

/* Variables and functions */
 int CHECK_CONDITION ; 
 scalar_t__ SRP_RSP ; 
 int SRP_RSP_FLAG_DIOVER ; 
 int SRP_RSP_FLAG_DOOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct srp_event_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct srp_event_struct *evt_struct)
{
	struct srp_rsp *rsp = &evt_struct->xfer_iu->srp.rsp;
	struct scsi_cmnd *cmnd = evt_struct->cmnd;

	if (FUNC5(rsp->opcode != SRP_RSP)) {
		if (FUNC2())
			FUNC0(evt_struct->hostdata->dev,
				 "bad SRP RSP type %d\n", rsp->opcode);
	}
	
	if (cmnd) {
		cmnd->result |= rsp->status;
		if (((cmnd->result >> 1) & 0x1f) == CHECK_CONDITION)
			FUNC1(cmnd->sense_buffer,
			       rsp->data,
			       rsp->sense_data_len);
		FUNC6(&evt_struct->iu.srp.cmd, 
			       evt_struct, 
			       evt_struct->hostdata->dev);

		if (rsp->flags & SRP_RSP_FLAG_DOOVER)
			FUNC3(cmnd, rsp->data_out_res_cnt);
		else if (rsp->flags & SRP_RSP_FLAG_DIOVER)
			FUNC3(cmnd, rsp->data_in_res_cnt);
	}

	if (evt_struct->cmnd_done)
		evt_struct->cmnd_done(cmnd);
}