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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct fc_seq {int dummy; } ;
struct TYPE_5__ {void* node_name; void* port_name; } ;
struct fc_rport_priv {scalar_t__ rp_state; struct fc_lport* local_port; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  maxframe_size; scalar_t__ max_seq; void* sp_features; TYPE_1__ ids; } ;
struct TYPE_8__ {int /*<<< orphan*/  rport_destroy; } ;
struct fc_lport {TYPE_4__ tt; int /*<<< orphan*/  mfs; scalar_t__ point_to_multipoint; } ;
struct fc_frame {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sp_tot_seq; int /*<<< orphan*/  sp_features; } ;
struct fc_els_flogi {TYPE_3__* fl_cssp; TYPE_2__ fl_csp; int /*<<< orphan*/  fl_wwnn; int /*<<< orphan*/  fl_wwpn; } ;
struct TYPE_7__ {int /*<<< orphan*/  cp_con_seq; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_PLOGI ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 struct fc_els_flogi* FUNC4 (struct fc_frame*,int) ; 
 scalar_t__ FUNC5 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_els_flogi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct fc_seq *sp, struct fc_frame *fp,
				void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct fc_lport *lport = rdata->local_port;
	struct fc_els_flogi *plp = NULL;
	u16 csp_seq;
	u16 cssp_seq;
	u8 op;

	FUNC13(&rdata->rp_mutex);

	FUNC0(rdata, "Received a PLOGI %s\n", FUNC2(fp));

	if (rdata->rp_state != RPORT_ST_PLOGI) {
		FUNC0(rdata, "Received a PLOGI response, but in state "
			     "%s\n", FUNC10(rdata));
		if (FUNC1(fp))
			goto err;
		goto out;
	}

	if (FUNC1(fp)) {
		FUNC8(rdata, fp);
		goto err;
	}

	op = FUNC5(fp);
	if (op == ELS_LS_ACC &&
	    (plp = FUNC4(fp, sizeof(*plp))) != NULL) {
		rdata->ids.port_name = FUNC11(&plp->fl_wwpn);
		rdata->ids.node_name = FUNC11(&plp->fl_wwnn);

		/* save plogi response sp_features for further reference */
		rdata->sp_features = FUNC15(plp->fl_csp.sp_features);

		if (lport->point_to_multipoint)
			FUNC9(rdata, fp);
		csp_seq = FUNC15(plp->fl_csp.sp_tot_seq);
		cssp_seq = FUNC15(plp->fl_cssp[3 - 1].cp_con_seq);
		if (cssp_seq < csp_seq)
			csp_seq = cssp_seq;
		rdata->max_seq = csp_seq;
		rdata->maxframe_size = FUNC6(plp, lport->mfs);
		FUNC7(rdata);
	} else
		FUNC8(rdata, fp);

out:
	FUNC3(fp);
err:
	FUNC14(&rdata->rp_mutex);
	FUNC12(&rdata->kref, rdata->local_port->tt.rport_destroy);
}