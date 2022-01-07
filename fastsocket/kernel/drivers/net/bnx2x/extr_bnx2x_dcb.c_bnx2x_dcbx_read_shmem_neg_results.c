
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lldp_local_mib {int error; int features; int member_0; } ;
struct bnx2x {int dcbx_error; int dcbx_local_feat; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_DCB ;
 int DCBX_READ_LOCAL_MIB ;
 int DP (int ,char*,scalar_t__) ;
 int EINVAL ;
 scalar_t__ SHMEM2_RD (struct bnx2x*,int ) ;
 scalar_t__ SHMEM_DCBX_NEG_RES_NONE ;
 int bnx2x_dcbx_read_mib (struct bnx2x*,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ dcbx_neg_res_offset ;

__attribute__((used)) static int bnx2x_dcbx_read_shmem_neg_results(struct bnx2x *bp)
{
 struct lldp_local_mib local_mib = {0};
 u32 dcbx_neg_res_offset = SHMEM2_RD(bp, dcbx_neg_res_offset);
 int rc;

 DP(BNX2X_MSG_DCB, "dcbx_neg_res_offset 0x%x\n", dcbx_neg_res_offset);

 if (SHMEM_DCBX_NEG_RES_NONE == dcbx_neg_res_offset) {
  BNX2X_ERR("FW doesn't support dcbx_neg_res_offset\n");
  return -EINVAL;
 }

 rc = bnx2x_dcbx_read_mib(bp, (u32 *)&local_mib, dcbx_neg_res_offset,
     DCBX_READ_LOCAL_MIB);

 if (rc) {
  BNX2X_ERR("Failed to read local mib from FW\n");
  return rc;
 }


 bp->dcbx_local_feat = local_mib.features;
 bp->dcbx_error = local_mib.error;
 return 0;
}
