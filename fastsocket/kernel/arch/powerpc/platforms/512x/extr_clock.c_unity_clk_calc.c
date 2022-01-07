
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; int rate; } ;
struct TYPE_2__ {int rate; } ;



__attribute__((used)) static void unity_clk_calc(struct clk *clk)
{
 clk->rate = clk->parent->rate;
}
