
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate; } ;



__attribute__((used)) static int clk_default_setrate(struct clk *clk, unsigned long rate)
{
 clk->rate = rate;
 return 0;
}
