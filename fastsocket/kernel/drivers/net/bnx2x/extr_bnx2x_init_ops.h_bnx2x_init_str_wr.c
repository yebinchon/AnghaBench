
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_WR (struct bnx2x*,int,int const) ;

__attribute__((used)) static void bnx2x_init_str_wr(struct bnx2x *bp, u32 addr,
         const u32 *data, u32 len)
{
 u32 i;

 for (i = 0; i < len; i++)
  REG_WR(bp, addr + i*4, data[i]);
}
