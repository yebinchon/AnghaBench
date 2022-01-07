
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct icst525_vco {int v; int r; int s; } ;
struct clk {int dummy; } ;


 int CM_AUXOSC ;
 int CM_LOCK ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void cp_auxvco_set(struct clk *clk, struct icst525_vco vco)
{
 u32 val;

 val = readl(CM_AUXOSC) & ~0x7ffff;
 val |= vco.v | (vco.r << 9) | (vco.s << 16);

 writel(0xa05f, CM_LOCK);
 writel(val, CM_AUXOSC);
 writel(0, CM_LOCK);
}
