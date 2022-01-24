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
union ib_gid {int /*<<< orphan*/ * raw; } ;
typedef  int u8 ;
typedef  int u32 ;
struct ocrdma_qp {TYPE_3__* dev; int /*<<< orphan*/  sgid_idx; } ;
struct TYPE_6__ {int tclass_sq_psn; int rnt_rc_sl_fl; int hop_lmt_rq_psn; int dmac_b0_to_b3; int vlan_dmac_b4_to_b5; int /*<<< orphan*/ * sgid; int /*<<< orphan*/ * dgid; } ;
struct ocrdma_modify_qp {int /*<<< orphan*/  flags; TYPE_2__ params; } ;
struct TYPE_8__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_5__ {int traffic_class; int flow_label; int hop_limit; TYPE_4__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct ib_ah_attr {int ah_flags; TYPE_1__ grh; } ;
struct ib_qp_attr {struct ib_ah_attr ah_attr; } ;
struct TYPE_7__ {int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int OCRDMA_QP_PARAMS_FLOW_LABEL_MASK ; 
 int OCRDMA_QP_PARAMS_HOP_LMT_SHIFT ; 
 int OCRDMA_QP_PARAMS_TCLASS_SHIFT ; 
 int OCRDMA_QP_PARAMS_VLAN_SHIFT ; 
 int /*<<< orphan*/  OCRDMA_QP_PARA_FLOW_LBL_VALID ; 
 int /*<<< orphan*/  OCRDMA_QP_PARA_VLAN_EN_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int*) ; 
 int FUNC4 (union ib_gid*) ; 

__attribute__((used)) static void FUNC5(struct ocrdma_qp *qp,
				struct ocrdma_modify_qp *cmd,
				struct ib_qp_attr *attrs)
{
	struct ib_ah_attr *ah_attr = &attrs->ah_attr;
	union ib_gid sgid;
	u32 vlan_id;
	u8 mac_addr[6];
	if ((ah_attr->ah_flags & IB_AH_GRH) == 0)
		return;
	cmd->params.tclass_sq_psn |=
	    (ah_attr->grh.traffic_class << OCRDMA_QP_PARAMS_TCLASS_SHIFT);
	cmd->params.rnt_rc_sl_fl |=
	    (ah_attr->grh.flow_label & OCRDMA_QP_PARAMS_FLOW_LABEL_MASK);
	cmd->params.hop_lmt_rq_psn |=
	    (ah_attr->grh.hop_limit << OCRDMA_QP_PARAMS_HOP_LMT_SHIFT);
	cmd->flags |= OCRDMA_QP_PARA_FLOW_LBL_VALID;
	FUNC0(&cmd->params.dgid[0], &ah_attr->grh.dgid.raw[0],
	       sizeof(cmd->params.dgid));
	FUNC2(&qp->dev->ibdev, 1,
			 ah_attr->grh.sgid_index, &sgid);
	qp->sgid_idx = ah_attr->grh.sgid_index;
	FUNC0(&cmd->params.sgid[0], &sgid.raw[0], sizeof(cmd->params.sgid));
	FUNC3(qp->dev, &ah_attr->grh.dgid, &mac_addr[0]);
	cmd->params.dmac_b0_to_b3 = mac_addr[0] | (mac_addr[1] << 8) |
				(mac_addr[2] << 16) | (mac_addr[3] << 24);
	/* convert them to LE format. */
	FUNC1(&cmd->params.dgid[0], sizeof(cmd->params.dgid));
	FUNC1(&cmd->params.sgid[0], sizeof(cmd->params.sgid));
	cmd->params.vlan_dmac_b4_to_b5 = mac_addr[4] | (mac_addr[5] << 8);
	vlan_id = FUNC4(&sgid);
	if (vlan_id && (vlan_id < 0x1000)) {
		cmd->params.vlan_dmac_b4_to_b5 |=
		    vlan_id << OCRDMA_QP_PARAMS_VLAN_SHIFT;
		cmd->flags |= OCRDMA_QP_PARA_VLAN_EN_VALID;
	}
}