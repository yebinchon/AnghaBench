
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int op_current; int abs_vfid; int op_mutex; } ;
struct bnx2x {int dummy; } ;
typedef enum channel_tlvs { ____Placeholder_channel_tlvs } channel_tlvs ;


 int BNX2X_MSG_IOV ;
 int CHANNEL_TLV_NONE ;
 int DP (int ,char*,int ,int) ;
 int WARN (int,char*,int,int) ;
 int bnx2x_tlv_supported (int) ;
 int mutex_unlock (int *) ;

void bnx2x_unlock_vf_pf_channel(struct bnx2x *bp, struct bnx2x_virtf *vf,
    enum channel_tlvs expected_tlv)
{

 if (!bnx2x_tlv_supported(expected_tlv))
  return;

 WARN(expected_tlv != vf->op_current,
      "lock mismatch: expected %d found %d", expected_tlv,
      vf->op_current);


 mutex_unlock(&vf->op_mutex);


 DP(BNX2X_MSG_IOV, "VF[%d]: vf pf channel unlocked by %d\n",
    vf->abs_vfid, vf->op_current);


 vf->op_current = CHANNEL_TLV_NONE;
}
