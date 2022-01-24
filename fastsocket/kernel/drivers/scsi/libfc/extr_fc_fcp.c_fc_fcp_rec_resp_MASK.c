#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct fc_seq {int dummy; } ;
struct fc_rport_libfc_priv {int /*<<< orphan*/  flags; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int state; int xfer_contig_end; int data_len; TYPE_2__* cmd; int /*<<< orphan*/  xfer_len; TYPE_1__* rport; scalar_t__ recov_retry; } ;
struct fc_els_rec_acc {int /*<<< orphan*/  reca_e_stat; int /*<<< orphan*/  reca_fc4value; } ;
struct fc_els_ls_rjt {int er_reason; int /*<<< orphan*/  er_explan; } ;
typedef  enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int sc_data_direction; } ;
struct TYPE_3__ {struct fc_rport_libfc_priv* dd_data; int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ELS_EXPL_OXID_RXID ; 
 scalar_t__ ELS_LS_ACC ; 
 scalar_t__ ELS_LS_RJT ; 
#define  ELS_RJT_LOGIC 130 
#define  ELS_RJT_UNAB 129 
#define  ELS_RJT_UNSUP 128 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_SEQ_INIT ; 
 int /*<<< orphan*/  FC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*,char*,...) ; 
 int FC_RCTL_DD_CMD_STATUS ; 
 int FC_RCTL_DD_DATA_DESC ; 
 int FC_RCTL_DD_SOL_DATA ; 
 int /*<<< orphan*/  FC_RP_FLAGS_REC_SUPPORTED ; 
 int FC_SRB_ABORTED ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_fcp_pkt*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_frame*) ; 
 void* FUNC11 (struct fc_frame*,int) ; 
 scalar_t__ FUNC12 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_fcp_pkt*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fc_fcp_pkt *fsp = (struct fc_fcp_pkt *)arg;
	struct fc_els_rec_acc *recp;
	struct fc_els_ls_rjt *rjt;
	u32 e_stat;
	u8 opcode;
	u32 offset;
	enum dma_data_direction data_dir;
	enum fc_rctl r_ctl;
	struct fc_rport_libfc_priv *rpriv;

	if (FUNC1(fp)) {
		FUNC4(fsp, fp);
		return;
	}

	if (FUNC2(fsp))
		goto out;

	fsp->recov_retry = 0;
	opcode = FUNC12(fp);
	if (opcode == ELS_LS_RJT) {
		rjt = FUNC11(fp, sizeof(*rjt));
		switch (rjt->er_reason) {
		default:
			FUNC0(fsp, "device %x unexpected REC reject "
				   "reason %d expl %d\n",
				   fsp->rport->port_id, rjt->er_reason,
				   rjt->er_explan);
			/* fall through */
		case ELS_RJT_UNSUP:
			FUNC0(fsp, "device does not support REC\n");
			rpriv = fsp->rport->dd_data;
			/*
			 * if we do not spport RECs or got some bogus
			 * reason then resetup timer so we check for
			 * making progress.
			 */
			rpriv->flags &= ~FC_RP_FLAGS_REC_SUPPORTED;
			break;
		case ELS_RJT_LOGIC:
		case ELS_RJT_UNAB:
			/*
			 * If no data transfer, the command frame got dropped
			 * so we just retry.  If data was transferred, we
			 * lost the response but the target has no record,
			 * so we abort and retry.
			 */
			if (rjt->er_explan == ELS_EXPL_OXID_RXID &&
			    fsp->xfer_len == 0) {
				FUNC6(fsp);
				break;
			}
			FUNC5(fsp, FC_ERROR);
			break;
		}
	} else if (opcode == ELS_LS_ACC) {
		if (fsp->state & FC_SRB_ABORTED)
			goto unlock_out;

		data_dir = fsp->cmd->sc_data_direction;
		recp = FUNC11(fp, sizeof(*recp));
		offset = FUNC14(recp->reca_fc4value);
		e_stat = FUNC14(recp->reca_e_stat);

		if (e_stat & ESB_ST_COMPLETE) {

			/*
			 * The exchange is complete.
			 *
			 * For output, we must've lost the response.
			 * For input, all data must've been sent.
			 * We lost may have lost the response
			 * (and a confirmation was requested) and maybe
			 * some data.
			 *
			 * If all data received, send SRR
			 * asking for response.	 If partial data received,
			 * or gaps, SRR requests data at start of gap.
			 * Recovery via SRR relies on in-order-delivery.
			 */
			if (data_dir == DMA_TO_DEVICE) {
				r_ctl = FC_RCTL_DD_CMD_STATUS;
			} else if (fsp->xfer_contig_end == offset) {
				r_ctl = FC_RCTL_DD_CMD_STATUS;
			} else {
				offset = fsp->xfer_contig_end;
				r_ctl = FC_RCTL_DD_SOL_DATA;
			}
			FUNC7(fsp, r_ctl, offset);
		} else if (e_stat & ESB_ST_SEQ_INIT) {
			/*
			 * The remote port has the initiative, so just
			 * keep waiting for it to complete.
			 */
			FUNC8(fsp,  FUNC13(fsp));
		} else {

			/*
			 * The exchange is incomplete, we have seq. initiative.
			 * Lost response with requested confirmation,
			 * lost confirmation, lost transfer ready or
			 * lost write data.
			 *
			 * For output, if not all data was received, ask
			 * for transfer ready to be repeated.
			 *
			 * If we received or sent all the data, send SRR to
			 * request response.
			 *
			 * If we lost a response, we may have lost some read
			 * data as well.
			 */
			r_ctl = FC_RCTL_DD_SOL_DATA;
			if (data_dir == DMA_TO_DEVICE) {
				r_ctl = FC_RCTL_DD_CMD_STATUS;
				if (offset < fsp->data_len)
					r_ctl = FC_RCTL_DD_DATA_DESC;
			} else if (offset == fsp->xfer_contig_end) {
				r_ctl = FC_RCTL_DD_CMD_STATUS;
			} else if (fsp->xfer_contig_end < offset) {
				offset = fsp->xfer_contig_end;
			}
			FUNC7(fsp, r_ctl, offset);
		}
	}
unlock_out:
	FUNC9(fsp);
out:
	FUNC3(fsp);	/* drop hold for outstanding REC */
	FUNC10(fp);
}