
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_RD (struct bnx2x*,int ) ;
 int pr_cont (char*,int ) ;

__attribute__((used)) static void _print_parity(struct bnx2x *bp, u32 reg)
{
 pr_cont(" [0x%08x] ", REG_RD(bp, reg));
}
