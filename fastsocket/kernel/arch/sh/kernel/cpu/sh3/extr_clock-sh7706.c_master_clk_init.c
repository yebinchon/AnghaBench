
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FRQCR ;
 int ctrl_inw (int ) ;
 int * pfc_divisors ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 int frqcr = ctrl_inw(FRQCR);
 int idx = ((frqcr & 0x2000) >> 11) | (frqcr & 0x0003);

 clk->rate *= pfc_divisors[idx];
}
