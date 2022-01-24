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
typedef  void* u32 ;
struct fcp_srr {int srr_r_ctl; int /*<<< orphan*/  srr_rel_off; void* srr_rx_id; void* srr_ox_id; int /*<<< orphan*/  srr_op; } ;
struct fc_seq {int dummy; } ;
struct fc_rport_libfc_priv {int flags; scalar_t__ rp_state; TYPE_1__* local_port; } ;
struct fc_rport {int /*<<< orphan*/  port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct TYPE_4__ {struct fc_seq* (* exch_seq_send ) (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_2__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  state; void* xfer_contig_end; void* xfer_len; struct fc_seq* recov_seq; struct fc_rport* rport; int /*<<< orphan*/  seq_ptr; struct fc_lport* lp; } ;
struct fc_exch {int /*<<< orphan*/  rxid; int /*<<< orphan*/  oxid; } ;
typedef  enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
struct TYPE_3__ {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_SRR ; 
 int /*<<< orphan*/  FC_FCTL_REQ ; 
 int /*<<< orphan*/  FC_RCTL_ELS4_REQ ; 
 int FC_RP_FLAGS_RETRY ; 
 int /*<<< orphan*/  FC_SRB_RCV_STATUS ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 scalar_t__ RPORT_ST_READY ; 
 struct fc_frame* FUNC0 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  fc_fcp_pkt_destroy ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  fc_fcp_srr_resp ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fcp_srr* FUNC4 (struct fc_frame*,int) ; 
 struct fc_exch* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct fcp_srr*,int /*<<< orphan*/ ,int) ; 
 struct fc_seq* FUNC11 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct fc_fcp_pkt *fsp, enum fc_rctl r_ctl, u32 offset)
{
	struct fc_lport *lport = fsp->lp;
	struct fc_rport *rport;
	struct fc_rport_libfc_priv *rpriv;
	struct fc_exch *ep = FUNC5(fsp->seq_ptr);
	struct fc_seq *seq;
	struct fcp_srr *srr;
	struct fc_frame *fp;
	unsigned int rec_tov;

	rport = fsp->rport;
	rpriv = rport->dd_data;

	if (!(rpriv->flags & FC_RP_FLAGS_RETRY) ||
	    rpriv->rp_state != RPORT_ST_READY)
		goto retry;			/* shouldn't happen */
	fp = FUNC0(lport, sizeof(*srr));
	if (!fp)
		goto retry;

	srr = FUNC4(fp, sizeof(*srr));
	FUNC10(srr, 0, sizeof(*srr));
	srr->srr_op = ELS_SRR;
	srr->srr_ox_id = FUNC8(ep->oxid);
	srr->srr_rx_id = FUNC8(ep->rxid);
	srr->srr_r_ctl = r_ctl;
	srr->srr_rel_off = FUNC7(offset);

	FUNC3(fp, FC_RCTL_ELS4_REQ, rport->port_id,
		       rpriv->local_port->port_id, FC_TYPE_FCP,
		       FC_FCTL_REQ, 0);

	rec_tov = FUNC6(fsp);
	seq = lport->tt.exch_seq_send(lport, fp, fc_fcp_srr_resp,
				      fc_fcp_pkt_destroy,
				      fsp, FUNC9(rec_tov));
	if (!seq)
		goto retry;

	fsp->recov_seq = seq;
	fsp->xfer_len = offset;
	fsp->xfer_contig_end = offset;
	fsp->state &= ~FC_SRB_RCV_STATUS;
	FUNC1(fsp);		/* hold for outstanding SRR */
	return;
retry:
	FUNC2(fsp);
}