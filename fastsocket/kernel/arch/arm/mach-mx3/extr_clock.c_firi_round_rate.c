
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int parent; } ;


 int __calc_pre_post_dividers (unsigned long,unsigned long*,unsigned long*) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long firi_round_rate(struct clk *clk, unsigned long rate)
{
 u32 pre, post;
 u32 parent = clk_get_rate(clk->parent);
 u32 div = parent / rate;

 if (parent % rate)
  div++;

 __calc_pre_post_dividers(div, &pre, &post);

 return parent / (pre * post);

}
