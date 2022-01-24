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
struct fc_seq_els_data {int /*<<< orphan*/  explan; int /*<<< orphan*/  reason; } ;
struct fc_rport_priv {int rp_state; int /*<<< orphan*/  rp_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* seq_els_rsp_send ) (struct fc_frame*,int const,struct fc_seq_els_data*) ;struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; TYPE_1__ disc; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_ADISC 137 
 int /*<<< orphan*/  ELS_EXPL_PLOGI_REQD ; 
 int const ELS_LS_RJT ; 
#define  ELS_PRLI 136 
#define  ELS_PRLO 135 
#define  ELS_REC 134 
 int /*<<< orphan*/  ELS_RJT_UNAB ; 
#define  ELS_RLS 133 
#define  ELS_RRQ 132 
#define  RPORT_ST_ADISC 131 
#define  RPORT_ST_PRLI 130 
#define  RPORT_ST_READY 129 
#define  RPORT_ST_RTV 128 
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 int FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct fc_rport_priv* FUNC9 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_frame*,int const,struct fc_seq_els_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_frame*,int const,struct fc_seq_els_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_frame*,int const,struct fc_seq_els_data*) ; 

__attribute__((used)) static void FUNC13(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_rport_priv *rdata;
	struct fc_seq_els_data els_data;

	FUNC7(&lport->disc.disc_mutex);
	rdata = lport->tt.rport_lookup(lport, FUNC2(fp));
	if (!rdata) {
		FUNC8(&lport->disc.disc_mutex);
		goto reject;
	}
	FUNC7(&rdata->rp_mutex);
	FUNC8(&lport->disc.disc_mutex);

	switch (rdata->rp_state) {
	case RPORT_ST_PRLI:
	case RPORT_ST_RTV:
	case RPORT_ST_READY:
	case RPORT_ST_ADISC:
		break;
	default:
		FUNC8(&rdata->rp_mutex);
		goto reject;
	}

	switch (FUNC1(fp)) {
	case ELS_PRLI:
		FUNC4(rdata, fp);
		break;
	case ELS_PRLO:
		FUNC5(rdata, fp);
		break;
	case ELS_ADISC:
		FUNC3(rdata, fp);
		break;
	case ELS_RRQ:
		lport->tt.seq_els_rsp_send(fp, ELS_RRQ, NULL);
		FUNC0(fp);
		break;
	case ELS_REC:
		lport->tt.seq_els_rsp_send(fp, ELS_REC, NULL);
		FUNC0(fp);
		break;
	case ELS_RLS:
		FUNC6(rdata, fp);
		break;
	default:
		FUNC0(fp);	/* can't happen */
		break;
	}

	FUNC8(&rdata->rp_mutex);
	return;

reject:
	els_data.reason = ELS_RJT_UNAB;
	els_data.explan = ELS_EXPL_PLOGI_REQD;
	lport->tt.seq_els_rsp_send(fp, ELS_LS_RJT, &els_data);
	FUNC0(fp);
}