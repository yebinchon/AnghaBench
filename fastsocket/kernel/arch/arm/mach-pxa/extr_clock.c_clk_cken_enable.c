
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int cken; } ;


 int CKEN ;

void clk_cken_enable(struct clk *clk)
{
 CKEN |= 1 << clk->cken;
}
