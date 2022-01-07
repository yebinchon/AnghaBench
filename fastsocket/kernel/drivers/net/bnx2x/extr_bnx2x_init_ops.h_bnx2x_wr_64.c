
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_WR_DMAE_LEN (struct bnx2x*,int ,int *,int) ;

__attribute__((used)) static void bnx2x_wr_64(struct bnx2x *bp, u32 reg, u32 val_lo,
   u32 val_hi)
{
 u32 wb_write[2];

 wb_write[0] = val_lo;
 wb_write[1] = val_hi;
 REG_WR_DMAE_LEN(bp, reg, wb_write, 2);
}
