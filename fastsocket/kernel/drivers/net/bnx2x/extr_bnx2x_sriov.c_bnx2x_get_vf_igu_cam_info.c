
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,char*,int,int,int) ;
 int GET_FIELD (int,int ) ;
 int IGU_FID_ENCODE_IS_PF ;
 int IGU_FID_PF_NUM_MASK ;
 int IGU_FID_VF_NUM_MASK ;
 scalar_t__ IGU_REG_MAPPING_MEMORY ;
 int IGU_REG_MAPPING_MEMORY_FID ;
 int IGU_REG_MAPPING_MEMORY_SIZE ;
 int IGU_REG_MAPPING_MEMORY_VALID ;
 int IGU_REG_MAPPING_MEMORY_VECTOR ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int bnx2x_vf_set_igu_info (struct bnx2x*,int,int) ;

__attribute__((used)) static void
bnx2x_get_vf_igu_cam_info(struct bnx2x *bp)
{
 int sb_id;
 u32 val;
 u8 fid;


 for (sb_id = 0; sb_id < IGU_REG_MAPPING_MEMORY_SIZE; sb_id++) {
  val = REG_RD(bp, IGU_REG_MAPPING_MEMORY + sb_id * 4);
  if (!(val & IGU_REG_MAPPING_MEMORY_VALID))
   continue;
  fid = GET_FIELD((val), IGU_REG_MAPPING_MEMORY_FID);
  if (!(fid & IGU_FID_ENCODE_IS_PF))
   bnx2x_vf_set_igu_info(bp, sb_id,
           (fid & IGU_FID_VF_NUM_MASK));

  DP(BNX2X_MSG_IOV, "%s[%d], igu_sb_id=%d, msix=%d\n",
     ((fid & IGU_FID_ENCODE_IS_PF) ? "PF" : "VF"),
     ((fid & IGU_FID_ENCODE_IS_PF) ? (fid & IGU_FID_PF_NUM_MASK) :
     (fid & IGU_FID_VF_NUM_MASK)), sb_id,
     GET_FIELD((val), IGU_REG_MAPPING_MEMORY_VECTOR));
 }
}
