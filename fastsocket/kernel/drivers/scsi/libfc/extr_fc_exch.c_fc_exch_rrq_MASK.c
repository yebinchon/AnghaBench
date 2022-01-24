#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct fc_lport {int /*<<< orphan*/  e_d_tov; int /*<<< orphan*/  port_id; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int state; int /*<<< orphan*/  ex_lock; int /*<<< orphan*/  r_a_tov; int /*<<< orphan*/  sid; int /*<<< orphan*/  did; int /*<<< orphan*/  rxid; int /*<<< orphan*/  oxid; struct fc_lport* lp; } ;
struct fc_els_rrq {void* rrq_rx_id; void* rrq_ox_id; int /*<<< orphan*/  rrq_s_id; int /*<<< orphan*/  rrq_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_RRQ ; 
 int ESB_ST_REC_QUAL ; 
 int ESB_ST_RESP ; 
 int FC_EX_DONE ; 
 int FC_EX_RST_CLEANUP ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_FIRST_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REQ ; 
 int /*<<< orphan*/  FC_TYPE_ELS ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*) ; 
 int /*<<< orphan*/  fc_exch_rrq_resp ; 
 scalar_t__ FUNC1 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC4 (struct fc_lport*,int) ; 
 struct fc_els_rrq* FUNC5 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_els_rrq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct fc_exch *ep)
{
	struct fc_lport *lport;
	struct fc_els_rrq *rrq;
	struct fc_frame *fp;
	u32 did;

	lport = ep->lp;

	fp = FUNC4(lport, sizeof(*rrq));
	if (!fp)
		goto retry;

	rrq = FUNC5(fp, sizeof(*rrq));
	FUNC8(rrq, 0, sizeof(*rrq));
	rrq->rrq_cmd = ELS_RRQ;
	FUNC6(rrq->rrq_s_id, ep->sid);
	rrq->rrq_ox_id = FUNC7(ep->oxid);
	rrq->rrq_rx_id = FUNC7(ep->rxid);

	did = ep->did;
	if (ep->esb_stat & ESB_ST_RESP)
		did = ep->sid;

	FUNC3(fp, FC_RCTL_ELS_REQ, did,
		       lport->port_id, FC_TYPE_ELS,
		       FC_FC_FIRST_SEQ | FC_FC_END_SEQ | FC_FC_SEQ_INIT, 0);

	if (FUNC1(lport, fp, fc_exch_rrq_resp, NULL, ep,
			     lport->e_d_tov))
		return;

retry:
	FUNC9(&ep->ex_lock);
	if (ep->state & (FC_EX_RST_CLEANUP | FC_EX_DONE)) {
		FUNC10(&ep->ex_lock);
		/* drop hold for rec qual */
		FUNC0(ep);
		return;
	}
	ep->esb_stat |= ESB_ST_REC_QUAL;
	FUNC2(ep, ep->r_a_tov);
	FUNC10(&ep->ex_lock);
}