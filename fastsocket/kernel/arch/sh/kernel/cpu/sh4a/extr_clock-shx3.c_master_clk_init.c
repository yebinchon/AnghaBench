
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FRQCR ;
 size_t PFC_MSK ;
 size_t PFC_POS ;
 size_t ctrl_inl (int ) ;
 int * pfc_divisors ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= pfc_divisors[(ctrl_inl(FRQCR) >> PFC_POS) & PFC_MSK];
}
