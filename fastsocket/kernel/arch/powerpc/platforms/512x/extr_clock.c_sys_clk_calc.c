
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int rate; } ;
struct TYPE_2__ {int rate; } ;


 TYPE_1__ ref_clk ;
 int ref_to_sys (int ) ;

__attribute__((used)) static void sys_clk_calc(struct clk *clk)
{
 clk->rate = ref_to_sys(ref_clk.rate);
}
