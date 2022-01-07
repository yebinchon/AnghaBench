
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_set_rate_ex (struct clk*,unsigned long,int ) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 return clk_set_rate_ex(clk, rate, 0);
}
