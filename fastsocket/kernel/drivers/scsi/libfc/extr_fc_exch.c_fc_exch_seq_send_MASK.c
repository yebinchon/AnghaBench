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
typedef  int /*<<< orphan*/  u32 ;
struct fc_seq {int /*<<< orphan*/  cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {scalar_t__ lro_xid; TYPE_1__ tt; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int /*<<< orphan*/  fh_f_ctl; int /*<<< orphan*/  fh_type; int /*<<< orphan*/  fh_d_id; int /*<<< orphan*/  fh_s_id; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int dummy; } ;
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;void (* destructor ) (struct fc_seq*,void*) ;int f_ctl; scalar_t__ xid; int /*<<< orphan*/  ex_lock; int /*<<< orphan*/  esb_stat; int /*<<< orphan*/  fh_type; struct fc_seq seq; struct fc_lport* lp; int /*<<< orphan*/  r_a_tov; void* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_ST_SEQ_INIT ; 
 int /*<<< orphan*/  FC_DEF_R_A_TOV ; 
 int FC_FC_FIRST_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 scalar_t__ FC_RCTL_DD_UNSOL_CMD ; 
 struct fc_exch* FUNC0 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_exch*) ; 
 int FUNC2 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*,struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_fcp_pkt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC9 (struct fc_frame*) ; 
 struct fc_fcp_pkt* FUNC10 (struct fc_frame*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_lport*,struct fc_frame*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fc_seq *FUNC15(struct fc_lport *lport,
				       struct fc_frame *fp,
				       void (*resp)(struct fc_seq *,
						    struct fc_frame *fp,
						    void *arg),
				       void (*destructor)(struct fc_seq *,
							  void *),
				       void *arg, u32 timer_msec)
{
	struct fc_exch *ep;
	struct fc_seq *sp = NULL;
	struct fc_frame_header *fh;
	struct fc_fcp_pkt *fsp = NULL;
	int rc = 1;

	ep = FUNC0(lport, fp);
	if (!ep) {
		FUNC8(fp);
		return NULL;
	}
	ep->esb_stat |= ESB_ST_SEQ_INIT;
	fh = FUNC9(fp);
	FUNC3(ep, FUNC11(fh->fh_s_id), FUNC11(fh->fh_d_id));
	ep->resp = resp;
	ep->destructor = destructor;
	ep->arg = arg;
	ep->r_a_tov = FC_DEF_R_A_TOV;
	ep->lp = lport;
	sp = &ep->seq;

	ep->fh_type = fh->fh_type; /* save for possbile timeout handling */
	ep->f_ctl = FUNC11(fh->fh_f_ctl);
	FUNC4(ep, fp, ep->f_ctl);
	sp->cnt++;

	if (ep->xid <= lport->lro_xid && fh->fh_r_ctl == FC_RCTL_DD_UNSOL_CMD) {
		fsp = FUNC10(fp);
		FUNC7(FUNC10(fp), ep->xid);
	}

	if (FUNC14(lport->tt.frame_send(lport, fp)))
		goto err;

	if (timer_msec)
		FUNC5(ep, timer_msec);
	ep->f_ctl &= ~FC_FC_FIRST_SEQ;	/* not first seq */

	if (ep->f_ctl & FC_FC_SEQ_INIT)
		ep->esb_stat &= ~ESB_ST_SEQ_INIT;
	FUNC12(&ep->ex_lock);
	return sp;
err:
	if (fsp)
		FUNC6(fsp);
	rc = FUNC2(ep);
	FUNC12(&ep->ex_lock);
	if (!rc)
		FUNC1(ep);
	return NULL;
}