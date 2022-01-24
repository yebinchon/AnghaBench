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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_2__ tt; int /*<<< orphan*/  host; } ;
struct fc_frame {int dummy; } ;
struct TYPE_3__ {int rec_data; } ;
struct fc_exch {scalar_t__ oid; scalar_t__ oxid; scalar_t__ rxid; scalar_t__ sid; scalar_t__ did; int esb_stat; TYPE_1__ seq; } ;
struct fc_els_rec_acc {void* reca_e_stat; void* reca_fc4value; int /*<<< orphan*/  reca_rfid; int /*<<< orphan*/  reca_rx_id; int /*<<< orphan*/  reca_ofid; int /*<<< orphan*/  reca_ox_id; int /*<<< orphan*/  reca_cmd; } ;
struct fc_els_rec {int /*<<< orphan*/  rec_s_id; int /*<<< orphan*/  rec_ox_id; int /*<<< orphan*/  rec_rx_id; } ;
typedef  enum fc_els_rjt_reason { ____Placeholder_fc_els_rjt_reason } fc_els_rjt_reason ;
typedef  enum fc_els_rjt_explan { ____Placeholder_fc_els_rjt_explan } fc_els_rjt_explan ;

/* Variables and functions */
 int ELS_EXPL_INV_LEN ; 
 int ELS_EXPL_OXID_RXID ; 
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int ELS_RJT_LOGIC ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_RESP ; 
 int ESB_ST_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 struct fc_exch* FUNC0 (struct fc_lport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC3 (struct fc_lport*,int) ; 
 void* FUNC4 (struct fc_frame*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*,int,int) ; 
 struct fc_lport* FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_els_rec_acc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC16(struct fc_frame *rfp)
{
	struct fc_lport *lport;
	struct fc_frame *fp;
	struct fc_exch *ep;
	struct fc_els_rec *rp;
	struct fc_els_rec_acc *acc;
	enum fc_els_rjt_reason reason = ELS_RJT_LOGIC;
	enum fc_els_rjt_explan explan;
	u32 sid;
	u16 rxid;
	u16 oxid;

	lport = FUNC7(rfp);
	rp = FUNC4(rfp, sizeof(*rp));
	explan = ELS_EXPL_INV_LEN;
	if (!rp)
		goto reject;
	sid = FUNC13(rp->rec_s_id);
	rxid = FUNC14(rp->rec_rx_id);
	oxid = FUNC14(rp->rec_ox_id);

	ep = FUNC0(lport,
			    sid == FUNC5(lport->host) ? oxid : rxid);
	explan = ELS_EXPL_OXID_RXID;
	if (!ep)
		goto reject;
	if (ep->oid != sid || oxid != ep->oxid)
		goto rel;
	if (rxid != FC_XID_UNKNOWN && rxid != ep->rxid)
		goto rel;
	fp = FUNC3(lport, sizeof(*acc));
	if (!fp)
		goto out;

	acc = FUNC4(fp, sizeof(*acc));
	FUNC12(acc, 0, sizeof(*acc));
	acc->reca_cmd = ELS_LS_ACC;
	acc->reca_ox_id = rp->rec_ox_id;
	FUNC11(acc->reca_ofid, rp->rec_s_id, 3);
	acc->reca_rx_id = FUNC10(ep->rxid);
	if (ep->sid == ep->oid)
		FUNC8(acc->reca_rfid, ep->did);
	else
		FUNC8(acc->reca_rfid, ep->sid);
	acc->reca_fc4value = FUNC9(ep->seq.rec_data);
	acc->reca_e_stat = FUNC9(ep->esb_stat & (ESB_ST_RESP |
						 ESB_ST_SEQ_INIT |
						 ESB_ST_COMPLETE));
	FUNC2(fp, rfp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
out:
	FUNC1(ep);
	return;

rel:
	FUNC1(ep);
reject:
	FUNC6(rfp, reason, explan);
}