
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int BP_FUNC (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int FW_VF_HANDLE (int ) ;
 int HW_VF_HANDLE (struct bnx2x*,int ) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;
 int bnx2x_vf_enable_internal (struct bnx2x*,int) ;
 int bnx2x_vf_pglue_clear_err (struct bnx2x*,int ) ;
 int bnx2x_vf_semi_clear_err (struct bnx2x*,int ) ;
 int storm_memset_func_en (struct bnx2x*,int ,int) ;
 int storm_memset_vf_to_pf (struct bnx2x*,int ,int ) ;

void bnx2x_vf_enable_access(struct bnx2x *bp, u8 abs_vfid)
{

 storm_memset_vf_to_pf(bp, FW_VF_HANDLE(abs_vfid), BP_FUNC(bp));
 storm_memset_func_en(bp, FW_VF_HANDLE(abs_vfid), 1);


 bnx2x_vf_semi_clear_err(bp, abs_vfid);
 bnx2x_vf_pglue_clear_err(bp, abs_vfid);


 bnx2x_pretend_func(bp, HW_VF_HANDLE(bp, abs_vfid));
 DP(BNX2X_MSG_IOV, "enabling internal access for vf %x\n", abs_vfid);
 bnx2x_vf_enable_internal(bp, 1);
 bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));
}
