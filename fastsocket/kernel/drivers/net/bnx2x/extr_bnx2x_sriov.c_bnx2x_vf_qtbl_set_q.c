
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int PXP_REG_HST_ZONE_PERMISSION_TABLE ;
 int REG_WR (struct bnx2x*,int,int) ;

__attribute__((used)) static void bnx2x_vf_qtbl_set_q(struct bnx2x *bp, u8 abs_vfid, u8 qid,
    u8 enable)
{
 u32 reg = PXP_REG_HST_ZONE_PERMISSION_TABLE + qid * 4;
 u32 val = enable ? (abs_vfid | (1 << 6)) : 0;

 REG_WR(bp, reg, val);
}
