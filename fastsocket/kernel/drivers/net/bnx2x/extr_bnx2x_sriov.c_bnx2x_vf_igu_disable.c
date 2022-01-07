
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BP_ABS_FUNC (struct bnx2x*) ;
 int HW_VF_HANDLE (struct bnx2x*,int ) ;
 int IGU_REG_VF_CONFIGURATION ;
 int IGU_VF_CONF_FUNC_EN ;
 int IGU_VF_CONF_MSI_MSIX_EN ;
 int IGU_VF_CONF_PARENT_MASK ;
 int IGU_VF_CONF_SINGLE_ISR_EN ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_vf_igu_disable(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 u32 val;


 bnx2x_pretend_func(bp, HW_VF_HANDLE(bp, vf->abs_vfid));
 val = REG_RD(bp, IGU_REG_VF_CONFIGURATION);
 val &= ~(IGU_VF_CONF_MSI_MSIX_EN | IGU_VF_CONF_SINGLE_ISR_EN |
   IGU_VF_CONF_FUNC_EN | IGU_VF_CONF_PARENT_MASK);
 REG_WR(bp, IGU_REG_VF_CONFIGURATION, val);
 bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));
}
