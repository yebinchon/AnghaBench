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
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_rport {int flags; int /*<<< orphan*/  fcoe_len; int /*<<< orphan*/  enode_mac; } ;
struct fcoe_ctlr {int state; TYPE_2__* lp; int /*<<< orphan*/  port_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_name; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct TYPE_4__ {int /*<<< orphan*/  wwpn; } ;

/* Variables and functions */
 int FIP_FL_REC_OR_P2P ; 
 int /*<<< orphan*/  FIP_SC_VN_CLAIM_REP ; 
 int /*<<< orphan*/  FIP_SC_VN_PROBE_REQ ; 
#define  FIP_ST_VNMP_CLAIM 132 
#define  FIP_ST_VNMP_PROBE1 131 
#define  FIP_ST_VNMP_PROBE2 130 
#define  FIP_ST_VNMP_START 129 
#define  FIP_ST_VNMP_UP 128 
 int /*<<< orphan*/  fcoe_all_vn2vn ; 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*) ; 
 struct fcoe_rport* FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_ctlr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fcoe_ctlr *fip,
				      struct fc_rport_priv *new)
{
	struct fcoe_rport *frport = FUNC1(new);

	if (frport->flags & FIP_FL_REC_OR_P2P) {
		FUNC4(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
		return;
	}
	switch (fip->state) {
	case FIP_ST_VNMP_START:
	case FIP_ST_VNMP_PROBE1:
	case FIP_ST_VNMP_PROBE2:
		if (new->ids.port_id == fip->port_id)
			FUNC3(fip);
		break;
	case FIP_ST_VNMP_CLAIM:
	case FIP_ST_VNMP_UP:
		if (new->ids.port_id == fip->port_id) {
			if (new->ids.port_name > fip->lp->wwpn) {
				FUNC3(fip);
				break;
			}
			FUNC5(fip);
			break;
		}
		FUNC4(fip, FIP_SC_VN_CLAIM_REP, frport->enode_mac,
				  FUNC6((u32)frport->fcoe_len,
				      FUNC0(fip)));
		FUNC2(fip, new);
		break;
	default:
		break;
	}
}