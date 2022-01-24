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
struct fcoe_rport {int flags; scalar_t__ time; } ;
struct fcoe_ctlr {scalar_t__ state; scalar_t__ sol_time; struct fc_lport* lp; } ;
struct TYPE_6__ {scalar_t__ node_name; scalar_t__ port_name; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {TYPE_3__ ids; int /*<<< orphan*/  kref; } ;
struct TYPE_5__ {int /*<<< orphan*/  rport_destroy; int /*<<< orphan*/  (* rport_login ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; TYPE_1__ disc; } ;

/* Variables and functions */
 int FIP_FL_REC_OR_P2P ; 
 int /*<<< orphan*/  FIP_SC_VN_PROBE_REQ ; 
 scalar_t__ FIP_ST_VNMP_UP ; 
 int /*<<< orphan*/  FIP_VN_ANN_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_all_vn2vn ; 
 struct fcoe_rport* FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct fc_rport_priv* FUNC9 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct fcoe_ctlr *fip,
				struct fc_rport_priv *new)
{
	struct fc_lport *lport = fip->lp;
	struct fc_rport_priv *rdata;
	struct fcoe_rport *frport;

	frport = FUNC1(new);
	if (frport->flags & FIP_FL_REC_OR_P2P) {
		FUNC2(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
		return;
	}
	FUNC7(&lport->disc.disc_mutex);
	rdata = lport->tt.rport_lookup(lport, new->ids.port_id);
	if (rdata)
		FUNC4(&rdata->kref);
	FUNC8(&lport->disc.disc_mutex);
	if (rdata) {
		if (rdata->ids.node_name == new->ids.node_name &&
		    rdata->ids.port_name == new->ids.port_name) {
			frport = FUNC1(rdata);
			if (!frport->time && fip->state == FIP_ST_VNMP_UP)
				lport->tt.rport_login(rdata);
			frport->time = jiffies;
		}
		FUNC5(&rdata->kref, lport->tt.rport_destroy);
		return;
	}
	if (fip->state != FIP_ST_VNMP_UP)
		return;

	/*
	 * Beacon from a new neighbor.
	 * Send a claim notify if one hasn't been sent recently.
	 * Don't add the neighbor yet.
	 */
	FUNC0(fip, "beacon from new rport %x. sending claim notify\n",
			new->ids.port_id);
	if (FUNC11(jiffies,
		       fip->sol_time + FUNC6(FIP_VN_ANN_WAIT)))
		FUNC3(fip);
}