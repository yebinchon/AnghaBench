
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void mpc5121_clk_put(struct clk *clk)
{
 module_put(clk->owner);
}
