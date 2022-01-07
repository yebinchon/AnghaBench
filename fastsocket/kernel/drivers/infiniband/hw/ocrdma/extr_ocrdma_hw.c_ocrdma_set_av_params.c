
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
typedef int u32 ;
struct ocrdma_qp {TYPE_3__* dev; int sgid_idx; } ;
struct TYPE_6__ {int tclass_sq_psn; int rnt_rc_sl_fl; int hop_lmt_rq_psn; int dmac_b0_to_b3; int vlan_dmac_b4_to_b5; int * sgid; int * dgid; } ;
struct ocrdma_modify_qp {int flags; TYPE_2__ params; } ;
struct TYPE_8__ {int * raw; } ;
struct TYPE_5__ {int traffic_class; int flow_label; int hop_limit; TYPE_4__ dgid; int sgid_index; } ;
struct ib_ah_attr {int ah_flags; TYPE_1__ grh; } ;
struct ib_qp_attr {struct ib_ah_attr ah_attr; } ;
struct TYPE_7__ {int ibdev; } ;


 int IB_AH_GRH ;
 int OCRDMA_QP_PARAMS_FLOW_LABEL_MASK ;
 int OCRDMA_QP_PARAMS_HOP_LMT_SHIFT ;
 int OCRDMA_QP_PARAMS_TCLASS_SHIFT ;
 int OCRDMA_QP_PARAMS_VLAN_SHIFT ;
 int OCRDMA_QP_PARA_FLOW_LBL_VALID ;
 int OCRDMA_QP_PARA_VLAN_EN_VALID ;
 int memcpy (int *,int *,int) ;
 int ocrdma_cpu_to_le32 (int *,int) ;
 int ocrdma_query_gid (int *,int,int ,union ib_gid*) ;
 int ocrdma_resolve_dgid (TYPE_3__*,TYPE_4__*,int*) ;
 int rdma_get_vlan_id (union ib_gid*) ;

__attribute__((used)) static void ocrdma_set_av_params(struct ocrdma_qp *qp,
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
 memcpy(&cmd->params.dgid[0], &ah_attr->grh.dgid.raw[0],
        sizeof(cmd->params.dgid));
 ocrdma_query_gid(&qp->dev->ibdev, 1,
    ah_attr->grh.sgid_index, &sgid);
 qp->sgid_idx = ah_attr->grh.sgid_index;
 memcpy(&cmd->params.sgid[0], &sgid.raw[0], sizeof(cmd->params.sgid));
 ocrdma_resolve_dgid(qp->dev, &ah_attr->grh.dgid, &mac_addr[0]);
 cmd->params.dmac_b0_to_b3 = mac_addr[0] | (mac_addr[1] << 8) |
    (mac_addr[2] << 16) | (mac_addr[3] << 24);

 ocrdma_cpu_to_le32(&cmd->params.dgid[0], sizeof(cmd->params.dgid));
 ocrdma_cpu_to_le32(&cmd->params.sgid[0], sizeof(cmd->params.sgid));
 cmd->params.vlan_dmac_b4_to_b5 = mac_addr[4] | (mac_addr[5] << 8);
 vlan_id = rdma_get_vlan_id(&sgid);
 if (vlan_id && (vlan_id < 0x1000)) {
  cmd->params.vlan_dmac_b4_to_b5 |=
      vlan_id << OCRDMA_QP_PARAMS_VLAN_SHIFT;
  cmd->flags |= OCRDMA_QP_PARA_VLAN_EN_VALID;
 }
}
