
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int op_current; int abs_vfid; int op_mutex; } ;
struct bnx2x {int dummy; } ;
typedef enum channel_tlvs { ____Placeholder_channel_tlvs } channel_tlvs ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ,int) ;
 int bnx2x_tlv_supported (int) ;
 int mutex_lock (int *) ;

void bnx2x_lock_vf_pf_channel(struct bnx2x *bp, struct bnx2x_virtf *vf,
         enum channel_tlvs tlv)
{

 if (!bnx2x_tlv_supported(tlv)) {
  BNX2X_ERR("attempting to lock with unsupported tlv. Aborting\n");
  return;
 }


 mutex_lock(&vf->op_mutex);


 vf->op_current = tlv;


 DP(BNX2X_MSG_IOV, "VF[%d]: vf pf channel locked by %d\n",
    vf->abs_vfid, tlv);
}
