
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnx2x_virtf {int leading_rss; int filter_state; int mcast_obj; int abs_vfid; } ;
struct TYPE_2__ {int func_id; } ;
struct bnx2x_vf_queue {int cid; int vlan_obj; int mac_obj; TYPE_1__ sp_obj; } ;
struct bnx2x {int vlans_pool; int macs_pool; } ;


 int BNX2X_FILTER_MAC_PENDING ;
 int BNX2X_FILTER_MCAST_PENDING ;
 int BNX2X_FILTER_VLAN_PENDING ;
 int BNX2X_MSG_IOV ;
 int BNX2X_OBJ_TYPE_RX_TX ;
 int BNX2X_Q_TYPE_HAS_RX ;
 int BNX2X_Q_TYPE_HAS_TX ;
 int DP (int ,char*,int ,int ) ;
 int FW_VF_HANDLE (int ) ;
 int bnx2x_init_mac_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int bnx2x_init_mcast_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int bnx2x_init_queue_obj (struct bnx2x*,TYPE_1__*,int ,int *,int,int ,int ,int ,unsigned long) ;
 int bnx2x_init_vlan_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int bnx2x_vf_sp (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_sp_map (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int mac_rdata ;
 int mcast_rdata ;
 int q_data ;
 int set_bit (int ,unsigned long*) ;
 int vfq_cl_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;
 scalar_t__ vfq_is_leading (struct bnx2x_vf_queue*) ;
 int vlan_rdata ;

__attribute__((used)) static void bnx2x_vfq_init(struct bnx2x *bp, struct bnx2x_virtf *vf,
      struct bnx2x_vf_queue *q)
{
 u8 cl_id = vfq_cl_id(vf, q);
 u8 func_id = FW_VF_HANDLE(vf->abs_vfid);
 unsigned long q_type = 0;

 set_bit(BNX2X_Q_TYPE_HAS_TX, &q_type);
 set_bit(BNX2X_Q_TYPE_HAS_RX, &q_type);


 bnx2x_init_queue_obj(bp, &q->sp_obj,
        cl_id, &q->cid, 1, func_id,
        bnx2x_vf_sp(bp, vf, q_data),
        bnx2x_vf_sp_map(bp, vf, q_data),
        q_type);

 DP(BNX2X_MSG_IOV,
    "initialized vf %d's queue object. func id set to %d\n",
    vf->abs_vfid, q->sp_obj.func_id);




 if (vfq_is_leading(q)) {

  bnx2x_init_mac_obj(bp, &q->mac_obj,
       cl_id, q->cid, func_id,
       bnx2x_vf_sp(bp, vf, mac_rdata),
       bnx2x_vf_sp_map(bp, vf, mac_rdata),
       BNX2X_FILTER_MAC_PENDING,
       &vf->filter_state,
       BNX2X_OBJ_TYPE_RX_TX,
       &bp->macs_pool);

  bnx2x_init_vlan_obj(bp, &q->vlan_obj,
        cl_id, q->cid, func_id,
        bnx2x_vf_sp(bp, vf, vlan_rdata),
        bnx2x_vf_sp_map(bp, vf, vlan_rdata),
        BNX2X_FILTER_VLAN_PENDING,
        &vf->filter_state,
        BNX2X_OBJ_TYPE_RX_TX,
        &bp->vlans_pool);


  bnx2x_init_mcast_obj(bp, &vf->mcast_obj, cl_id,
         q->cid, func_id, func_id,
         bnx2x_vf_sp(bp, vf, mcast_rdata),
         bnx2x_vf_sp_map(bp, vf, mcast_rdata),
         BNX2X_FILTER_MCAST_PENDING,
         &vf->filter_state,
         BNX2X_OBJ_TYPE_RX_TX);

  vf->leading_rss = cl_id;
 }
}
