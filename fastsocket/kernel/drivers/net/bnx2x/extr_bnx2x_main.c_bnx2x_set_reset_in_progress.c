
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_PATH0_RST_IN_PROG_BIT ;
 int BNX2X_PATH1_RST_IN_PROG_BIT ;
 int BNX2X_RECOVERY_GLOB_REG ;
 scalar_t__ BP_PATH (struct bnx2x*) ;
 int HW_LOCK_RESOURCE_RECOVERY_REG ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

void bnx2x_set_reset_in_progress(struct bnx2x *bp)
{
 u32 val;
 u32 bit = BP_PATH(bp) ?
  BNX2X_PATH1_RST_IN_PROG_BIT : BNX2X_PATH0_RST_IN_PROG_BIT;
 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
 val = REG_RD(bp, BNX2X_RECOVERY_GLOB_REG);


 val |= bit;
 REG_WR(bp, BNX2X_RECOVERY_GLOB_REG, val);
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
}
