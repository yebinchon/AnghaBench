
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int num_mc_filters; int num_vlan_filters; int num_mac_filters; int num_sbs; int num_txqs; int num_rxqs; } ;
struct TYPE_7__ {int vf_os; int vf_id; } ;
struct vfpf_acquire_tlv {int bulletin_addr; TYPE_4__ resc_request; TYPE_3__ vfdev_info; } ;
struct bnx2x_virtf {int bulletin_map; int abs_vfid; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_5__ {struct vfpf_acquire_tlv acquire; } ;
struct TYPE_6__ {TYPE_1__ req; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int bnx2x_vf_acquire (struct bnx2x*,struct bnx2x_virtf*,TYPE_4__*) ;
 int bnx2x_vf_mbx_acquire_resp (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_acquire(struct bnx2x *bp, struct bnx2x_virtf *vf,
     struct bnx2x_vf_mbx *mbx)
{
 int rc;
 struct vfpf_acquire_tlv *acquire = &mbx->msg->req.acquire;


 DP(BNX2X_MSG_IOV,
    "VF[%d] ACQUIRE: vfdev_info- vf_id %d, vf_os %d resources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d\n",
    vf->abs_vfid, acquire->vfdev_info.vf_id, acquire->vfdev_info.vf_os,
    acquire->resc_request.num_rxqs, acquire->resc_request.num_txqs,
    acquire->resc_request.num_sbs, acquire->resc_request.num_mac_filters,
    acquire->resc_request.num_vlan_filters,
    acquire->resc_request.num_mc_filters);


 rc = bnx2x_vf_acquire(bp, vf, &acquire->resc_request);


 vf->bulletin_map = acquire->bulletin_addr;


 bnx2x_vf_mbx_acquire_resp(bp, vf, mbx, rc);
}
