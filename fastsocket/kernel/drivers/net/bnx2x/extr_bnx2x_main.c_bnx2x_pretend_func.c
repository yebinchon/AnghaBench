
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 int E1H_FUNC_MAX ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_get_pretend_reg (struct bnx2x*) ;

int bnx2x_pretend_func(struct bnx2x *bp, u16 pretend_func_val)
{
 u32 pretend_reg;

 if (CHIP_IS_E1H(bp) && pretend_func_val >= E1H_FUNC_MAX)
  return -1;


 pretend_reg = bnx2x_get_pretend_reg(bp);
 REG_WR(bp, pretend_reg, pretend_func_val);
 REG_RD(bp, pretend_reg);
 return 0;
}
