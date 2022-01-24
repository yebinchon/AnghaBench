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
typedef  int u32 ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exch_done ) (struct fc_seq*) ;int /*<<< orphan*/  (* seq_send ) (struct fc_lport*,struct fc_seq*,struct fc_frame*) ;struct fc_seq* (* seq_start_next ) (struct fc_seq*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int state; scalar_t__ xfer_len; scalar_t__ data_len; int scsi_comp_flags; scalar_t__ scsi_resid; scalar_t__ cmd; struct fc_lport* lp; struct fc_seq* seq_ptr; scalar_t__ io_status; scalar_t__ status_code; } ;
struct fc_exch {int /*<<< orphan*/  sid; int /*<<< orphan*/  did; } ;

/* Variables and functions */
 int FCP_CONF_REQ ; 
 int FCP_RESID_UNDER ; 
 scalar_t__ FC_CMD_ABORTED ; 
 scalar_t__ FC_DATA_UNDRUN ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_LAST_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_DD_SOL_CTL ; 
 int FC_SRB_ABORTED ; 
 int FC_SRB_ABORT_PENDING ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 struct fc_frame* FUNC0 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*) ; 
 struct fc_exch* FUNC3 (struct fc_seq*) ; 
 struct fc_seq* FUNC4 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,struct fc_seq*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_seq*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct fc_fcp_pkt *fsp)
{
	struct fc_lport *lport = fsp->lp;
	struct fc_seq *seq;
	struct fc_exch *ep;
	u32 f_ctl;

	if (fsp->state & FC_SRB_ABORT_PENDING)
		return;

	if (fsp->state & FC_SRB_ABORTED) {
		if (!fsp->status_code)
			fsp->status_code = FC_CMD_ABORTED;
	} else {
		/*
		 * Test for transport underrun, independent of response
		 * underrun status.
		 */
		if (fsp->xfer_len < fsp->data_len && !fsp->io_status &&
		    (!(fsp->scsi_comp_flags & FCP_RESID_UNDER) ||
		     fsp->xfer_len < fsp->data_len - fsp->scsi_resid)) {
			fsp->status_code = FC_DATA_UNDRUN;
			fsp->io_status = 0;
		}
	}

	seq = fsp->seq_ptr;
	if (seq) {
		fsp->seq_ptr = NULL;
		if (FUNC7(fsp->scsi_comp_flags & FCP_CONF_REQ)) {
			struct fc_frame *conf_frame;
			struct fc_seq *csp;

			csp = lport->tt.seq_start_next(seq);
			conf_frame = FUNC0(fsp->lp, 0);
			if (conf_frame) {
				f_ctl = FC_FC_SEQ_INIT;
				f_ctl |= FC_FC_LAST_SEQ | FC_FC_END_SEQ;
				ep = FUNC3(seq);
				FUNC1(conf_frame, FC_RCTL_DD_SOL_CTL,
					       ep->did, ep->sid,
					       FC_TYPE_FCP, f_ctl, 0);
				lport->tt.seq_send(lport, csp, conf_frame);
			}
		}
		lport->tt.exch_done(seq);
	}
	/*
	 * Some resets driven by SCSI are not I/Os and do not have
	 * SCSI commands associated with the requests. We should not
	 * call I/O completion if we do not have a SCSI command.
	 */
	if (fsp->cmd)
		FUNC2(fsp);
}