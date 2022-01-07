
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct impd1_module {scalar_t__ base; struct clk* vcos; } ;
struct icst525_vco {int v; int r; int s; } ;
struct clk {struct impd1_module* data; } ;


 scalar_t__ IMPD1_LOCK ;
 scalar_t__ IMPD1_OSC1 ;
 scalar_t__ IMPD1_OSC2 ;
 int icst525_khz (int *,struct icst525_vco) ;
 int impd1_vco_params ;
 int pr_debug (char*,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void impd1_setvco(struct clk *clk, struct icst525_vco vco)
{
 struct impd1_module *impd1 = clk->data;
 int vconr = clk - impd1->vcos;
 u32 val;

 val = vco.v | (vco.r << 9) | (vco.s << 16);

 writel(0xa05f, impd1->base + IMPD1_LOCK);
 switch (vconr) {
 case 0:
  writel(val, impd1->base + IMPD1_OSC1);
  break;
 case 1:
  writel(val, impd1->base + IMPD1_OSC2);
  break;
 }
 writel(0, impd1->base + IMPD1_LOCK);
}
