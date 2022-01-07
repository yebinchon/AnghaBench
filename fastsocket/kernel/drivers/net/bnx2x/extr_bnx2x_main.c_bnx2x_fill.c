
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_WR (struct bnx2x*,int,int) ;
 int REG_WR8 (struct bnx2x*,int,int) ;

__attribute__((used)) static void bnx2x_fill(struct bnx2x *bp, u32 addr, int fill, u32 len)
{
 u32 i;
 if (!(len%4) && !(addr%4))
  for (i = 0; i < len; i += 4)
   REG_WR(bp, addr + i, fill);
 else
  for (i = 0; i < len; i++)
   REG_WR8(bp, addr + i, fill);
}
