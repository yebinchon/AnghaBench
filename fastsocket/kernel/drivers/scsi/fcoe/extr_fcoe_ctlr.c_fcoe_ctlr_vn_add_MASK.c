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
struct fcoe_rport {scalar_t__ time; scalar_t__ fcoe_len; } ;
struct fcoe_ctlr {scalar_t__ port_id; struct fc_lport* lp; } ;
struct fc_rport_identifiers {scalar_t__ port_id; int port_name; int node_name; } ;
struct fc_rport_priv {struct fc_rport_identifiers ids; int /*<<< orphan*/  disc_id; int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disc_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rport_logoff ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_create ) (struct fc_lport*,scalar_t__) ;} ;
struct fc_lport {TYPE_2__ disc; TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,scalar_t__,char*) ; 
 struct fcoe_rport* FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  fcoe_ctlr_vn_rport_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fc_rport_priv* FUNC4 (struct fc_lport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 

__attribute__((used)) static void FUNC6(struct fcoe_ctlr *fip, struct fc_rport_priv *new)
{
	struct fc_lport *lport = fip->lp;
	struct fc_rport_priv *rdata;
	struct fc_rport_identifiers *ids;
	struct fcoe_rport *frport;
	u32 port_id;

	port_id = new->ids.port_id;
	if (port_id == fip->port_id)
		return;

	FUNC2(&lport->disc.disc_mutex);
	rdata = lport->tt.rport_create(lport, port_id);
	if (!rdata) {
		FUNC3(&lport->disc.disc_mutex);
		return;
	}

	rdata->ops = &fcoe_ctlr_vn_rport_ops;
	rdata->disc_id = lport->disc.disc_id;

	ids = &rdata->ids;
	if ((ids->port_name != -1 && ids->port_name != new->ids.port_name) ||
	    (ids->node_name != -1 && ids->node_name != new->ids.node_name))
		lport->tt.rport_logoff(rdata);
	ids->port_name = new->ids.port_name;
	ids->node_name = new->ids.node_name;
	FUNC3(&lport->disc.disc_mutex);

	frport = FUNC1(rdata);
	FUNC0(fip, "vn_add rport %6.6x %s\n",
			port_id, frport->fcoe_len ? "old" : "new");
	*frport = *FUNC1(new);
	frport->time = 0;
}