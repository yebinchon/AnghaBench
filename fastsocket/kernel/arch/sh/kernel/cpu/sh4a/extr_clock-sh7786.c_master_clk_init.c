
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FRQMR1 ;
 int ctrl_inl (int ) ;
 int * pfc_divisors ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= pfc_divisors[ctrl_inl(FRQMR1) & 0x000f];
}
