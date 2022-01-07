
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_PATH0_RST_IN_PROG_BIT ;
 int BNX2X_PATH1_RST_IN_PROG_BIT ;
 int BNX2X_RECOVERY_GLOB_REG ;
 int REG_RD (struct bnx2x*,int ) ;

bool bnx2x_reset_is_done(struct bnx2x *bp, int engine)
{
 u32 val = REG_RD(bp, BNX2X_RECOVERY_GLOB_REG);
 u32 bit = engine ?
  BNX2X_PATH1_RST_IN_PROG_BIT : BNX2X_PATH0_RST_IN_PROG_BIT;


 return (val & bit) ? 0 : 1;
}
