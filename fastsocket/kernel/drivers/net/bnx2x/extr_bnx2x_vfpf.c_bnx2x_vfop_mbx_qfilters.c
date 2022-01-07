
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfpf_set_q_filters_tlv {int flags; int rx_mask; int vf_qid; int n_multicast; int multicast; } ;
struct bnx2x_virtf {int abs_vfid; int index; } ;
struct bnx2x_vfop_filters {int dummy; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop {int state; scalar_t__ rc; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vfop_filters_state { ____Placeholder_bnx2x_vfop_filters_state } bnx2x_vfop_filters_state ;
struct TYPE_6__ {TYPE_2__* msg; } ;
struct TYPE_4__ {struct vfpf_set_q_filters_tlv set_q_filters; } ;
struct TYPE_5__ {TYPE_1__ req; } ;


 int BNX2X_ACCEPT_ALL_MULTICAST ;
 int BNX2X_ACCEPT_ALL_UNICAST ;
 int BNX2X_ACCEPT_ANY_VLAN ;
 int BNX2X_ACCEPT_BROADCAST ;
 int BNX2X_ACCEPT_MULTICAST ;
 int BNX2X_ACCEPT_UNICAST ;
 int BNX2X_ERR (char*,int ,int ,int) ;
 int BNX2X_MSG_IOV ;





 TYPE_3__* BP_VF_MBX (struct bnx2x*,int ) ;
 int DP (int ,char*,int) ;
 int VFPF_MAC_FILTER ;
 int VFPF_RX_MASK_ACCEPT_ALL_MULTICAST ;
 int VFPF_RX_MASK_ACCEPT_ALL_UNICAST ;
 int VFPF_RX_MASK_ACCEPT_BROADCAST ;
 int VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST ;
 int VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST ;
 int VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED ;
 int VFPF_SET_Q_FILTERS_MULTICAST_CHANGED ;
 int VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ;
 int VFPF_VLAN_FILTER ;
 int __set_bit (int ,unsigned long*) ;
 void* bnx2x_vf_mbx_macvlan_list (struct bnx2x*,struct bnx2x_virtf*,struct vfpf_set_q_filters_tlv*,struct bnx2x_vfop_filters**,int ) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;
 int bnx2x_vfop_mac_list_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,struct bnx2x_vfop_filters*,int ,int) ;
 int bnx2x_vfop_mcast_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int ,int ,int) ;
 int bnx2x_vfop_rxmode_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int ,unsigned long) ;
 int bnx2x_vfop_vlan_list_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,struct bnx2x_vfop_filters*,int ,int) ;

__attribute__((used)) static void bnx2x_vfop_mbx_qfilters(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc;

 struct vfpf_set_q_filters_tlv *msg =
  &BP_VF_MBX(bp, vf->index)->msg->req.set_q_filters;

 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 enum bnx2x_vfop_filters_state state = vfop->state;

 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vfop_mbx_qfilters,
  .block = 0,
 };

 DP(BNX2X_MSG_IOV, "STATE: %d\n", state);

 if (vfop->rc < 0)
  goto op_err;

 switch (state) {
 case 131:

  vfop->state = 128;


  if (msg->flags & VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED) {

   struct bnx2x_vfop_filters *fl = ((void*)0);

   vfop->rc = bnx2x_vf_mbx_macvlan_list(bp, vf, msg, &fl,
            VFPF_MAC_FILTER);
   if (vfop->rc)
    goto op_err;

   if (fl) {

    rc = bnx2x_vfop_mac_list_cmd(bp, vf, &cmd, fl,
            msg->vf_qid,
            0);
    if (rc) {
     vfop->rc = rc;
     goto op_err;
    }
    return;
   }
  }


 case 128:

  vfop->state = 129;


  if (msg->flags & VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED) {

   struct bnx2x_vfop_filters *fl = ((void*)0);

   vfop->rc = bnx2x_vf_mbx_macvlan_list(bp, vf, msg, &fl,
            VFPF_VLAN_FILTER);
   if (vfop->rc)
    goto op_err;

   if (fl) {

    rc = bnx2x_vfop_vlan_list_cmd(bp, vf, &cmd, fl,
             msg->vf_qid,
             0);
    if (rc) {
     vfop->rc = rc;
     goto op_err;
    }
    return;
   }
  }


 case 129:

  vfop->state = 130;

  if (msg->flags & VFPF_SET_Q_FILTERS_RX_MASK_CHANGED) {
   unsigned long accept = 0;


   if (msg->rx_mask & VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST)
    __set_bit(BNX2X_ACCEPT_UNICAST, &accept);

   if (msg->rx_mask &
     VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST)
    __set_bit(BNX2X_ACCEPT_MULTICAST, &accept);

   if (msg->rx_mask & VFPF_RX_MASK_ACCEPT_ALL_UNICAST)
    __set_bit(BNX2X_ACCEPT_ALL_UNICAST, &accept);

   if (msg->rx_mask & VFPF_RX_MASK_ACCEPT_ALL_MULTICAST)
    __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, &accept);

   if (msg->rx_mask & VFPF_RX_MASK_ACCEPT_BROADCAST)
    __set_bit(BNX2X_ACCEPT_BROADCAST, &accept);




   __set_bit(BNX2X_ACCEPT_ANY_VLAN, &accept);


   rc = bnx2x_vfop_rxmode_cmd(bp, vf, &cmd,
         msg->vf_qid, accept);
   if (rc) {
    vfop->rc = rc;
    goto op_err;
   }
   return;
  }


 case 130:

  vfop->state = 132;

  if (msg->flags & VFPF_SET_Q_FILTERS_MULTICAST_CHANGED) {

   rc = bnx2x_vfop_mcast_cmd(bp, vf, &cmd, msg->multicast,
        msg->n_multicast, 0);
   if (rc) {
    vfop->rc = rc;
    goto op_err;
   }
   return;
  }

op_done:
 case 132:
  bnx2x_vfop_end(bp, vf, vfop);
  return;
op_err:
 BNX2X_ERR("QFILTERS[%d:%d] error: rc %d\n",
    vf->abs_vfid, msg->vf_qid, vfop->rc);
 goto op_done;

 default:
  bnx2x_vfop_default(state);
 }
}
