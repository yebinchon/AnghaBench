#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct fc_seq {int dummy; } ;
struct TYPE_4__ {scalar_t__ port_id; scalar_t__ port_name; scalar_t__ node_name; } ;
struct fc_rport_priv {scalar_t__ rp_state; TYPE_3__* local_port; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; TYPE_1__ ids; } ;
struct fc_frame {int dummy; } ;
struct fc_els_adisc {int /*<<< orphan*/  adisc_wwnn; int /*<<< orphan*/  adisc_wwpn; int /*<<< orphan*/  adisc_port_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  rport_destroy; } ;
struct TYPE_6__ {TYPE_2__ tt; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,...) ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_ADISC ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 struct fc_els_adisc* FUNC3 (struct fc_frame*,int) ; 
 scalar_t__ FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fc_seq *sp, struct fc_frame *fp,
				void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct fc_els_adisc *adisc;
	u8 op;

	FUNC11(&rdata->rp_mutex);

	FUNC0(rdata, "Received a ADISC response\n");

	if (rdata->rp_state != RPORT_ST_ADISC) {
		FUNC0(rdata, "Received a ADISC resp but in state %s\n",
			     FUNC8(rdata));
		if (FUNC1(fp))
			goto err;
		goto out;
	}

	if (FUNC1(fp)) {
		FUNC7(rdata, fp);
		goto err;
	}

	/*
	 * If address verification failed.  Consider us logged out of the rport.
	 * Since the rport is still in discovery, we want to be
	 * logged in, so go to PLOGI state.  Otherwise, go back to READY.
	 */
	op = FUNC4(fp);
	adisc = FUNC3(fp, sizeof(*adisc));
	if (op != ELS_LS_ACC || !adisc ||
	    FUNC13(adisc->adisc_port_id) != rdata->ids.port_id ||
	    FUNC9(&adisc->adisc_wwpn) != rdata->ids.port_name ||
	    FUNC9(&adisc->adisc_wwnn) != rdata->ids.node_name) {
		FUNC0(rdata, "ADISC error or mismatch\n");
		FUNC5(rdata);
	} else {
		FUNC0(rdata, "ADISC OK\n");
		FUNC6(rdata);
	}
out:
	FUNC2(fp);
err:
	FUNC12(&rdata->rp_mutex);
	FUNC10(&rdata->kref, rdata->local_port->tt.rport_destroy);
}