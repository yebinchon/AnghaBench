
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 scalar_t__ CHIP_REV_2_0 ;
 unsigned long clk_get_rate (int ) ;
 scalar_t__ mx27_revision () ;

__attribute__((used)) static unsigned long get_rate_ssix(struct clk *clk, unsigned long pdf)
{
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 if (mx27_revision() >= CHIP_REV_2_0)
  pdf += 4;
 else
  pdf = (pdf < 2) ? 124UL : pdf;

 return 2UL * parent_rate / pdf;
}
