
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ FUNC_ILT_BASE (scalar_t__) ;
 scalar_t__ ILT_PER_FUNC ;
 int bnx2x_ilt_wr (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void bnx2x_clear_func_ilt(struct bnx2x *bp, u32 func)
{
 u32 i, base = FUNC_ILT_BASE(func);
 for (i = base; i < base + ILT_PER_FUNC; i++)
  bnx2x_ilt_wr(bp, i, 0);
}
