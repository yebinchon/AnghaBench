
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union vfpf_tlvs {int dummy; } vfpf_tlvs ;
typedef int u8 ;
struct vf_pf_event_data {scalar_t__ vf_id; scalar_t__ msg_addr_hi; scalar_t__ msg_addr_lo; } ;
struct bnx2x_virtf {scalar_t__ abs_vfid; } ;
struct TYPE_7__ {scalar_t__ resp_msg_offset; } ;
struct bnx2x_vf_mbx {int flags; scalar_t__ vf_addr_hi; scalar_t__ vf_addr_lo; TYPE_4__* msg; TYPE_2__ first_tlv; int msg_mapping; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {scalar_t__ first_vf_in_pf; } ;
struct TYPE_10__ {TYPE_1__ sriov; } ;
struct TYPE_8__ {TYPE_2__ first_tlv; } ;
struct TYPE_9__ {TYPE_3__ req; } ;


 int BNX2X_ERR (char*,scalar_t__,...) ;
 int BNX2X_MSG_IOV ;
 scalar_t__ BNX2X_NR_VIRTFN (struct bnx2x*) ;
 struct bnx2x_virtf* BP_VF (struct bnx2x*,int ) ;
 TYPE_5__* BP_VFDB (struct bnx2x*) ;
 struct bnx2x_vf_mbx* BP_VF_MBX (struct bnx2x*,int ) ;
 int DP (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int VF_MSG_INPROCESS ;
 int bnx2x_copy32_vf_dmae (struct bnx2x*,int,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int bnx2x_vf_idx_by_abs_fid (struct bnx2x*,scalar_t__) ;
 int bnx2x_vf_mbx_request (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_release (struct bnx2x*,struct bnx2x_virtf*,int) ;

void bnx2x_vf_mbx(struct bnx2x *bp, struct vf_pf_event_data *vfpf_event)
{
 struct bnx2x_virtf *vf;
 struct bnx2x_vf_mbx *mbx;
 u8 vf_idx;
 int rc;

 DP(BNX2X_MSG_IOV,
    "vf pf event received: vfid %d, address_hi %x, address lo %x",
    vfpf_event->vf_id, vfpf_event->msg_addr_hi, vfpf_event->msg_addr_lo);



 if (vfpf_event->vf_id - BP_VFDB(bp)->sriov.first_vf_in_pf >
     BNX2X_NR_VIRTFN(bp)) {
  BNX2X_ERR("Illegal vf_id %d max allowed: %d\n",
     vfpf_event->vf_id, BNX2X_NR_VIRTFN(bp));
  goto mbx_done;
 }
 vf_idx = bnx2x_vf_idx_by_abs_fid(bp, vfpf_event->vf_id);
 mbx = BP_VF_MBX(bp, vf_idx);




 if (mbx->flags & VF_MSG_INPROCESS) {
  BNX2X_ERR("Previous message is still being processed, vf_id %d\n",
     vfpf_event->vf_id);
  goto mbx_done;
 }
 vf = BP_VF(bp, vf_idx);


 mbx->vf_addr_hi = vfpf_event->msg_addr_hi;
 mbx->vf_addr_lo = vfpf_event->msg_addr_lo;
 DP(BNX2X_MSG_IOV, "mailbox vf address hi 0x%x, lo 0x%x, offset 0x%x\n",
    mbx->vf_addr_hi, mbx->vf_addr_lo, mbx->first_tlv.resp_msg_offset);


 rc = bnx2x_copy32_vf_dmae(bp, 1, mbx->msg_mapping, vf->abs_vfid,
      mbx->vf_addr_hi, mbx->vf_addr_lo,
      sizeof(union vfpf_tlvs)/4);
 if (rc) {
  BNX2X_ERR("Failed to copy request VF %d\n", vf->abs_vfid);
  goto mbx_error;
 }


 mbx->first_tlv = mbx->msg->req.first_tlv;


 bnx2x_vf_mbx_request(bp, vf, mbx);
 goto mbx_done;

mbx_error:
 bnx2x_vf_release(bp, vf, 0);
mbx_done:
 return;
}
