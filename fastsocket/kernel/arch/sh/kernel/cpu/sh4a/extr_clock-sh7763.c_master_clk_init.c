
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FRQCR ;
 int ctrl_inl (int ) ;
 int * p0fc_divisors ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= p0fc_divisors[(ctrl_inl(FRQCR) >> 4) & 0x07];
}
