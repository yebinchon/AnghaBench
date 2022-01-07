
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;



__attribute__((used)) static void ac97_clk_calc(struct clk *clk)
{

 clk->rate = 24567000;
}
