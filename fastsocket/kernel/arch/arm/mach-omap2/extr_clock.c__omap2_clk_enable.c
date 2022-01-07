
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;


 int stub1 (struct clk*) ;

__attribute__((used)) static int _omap2_clk_enable(struct clk *clk)
{
 return clk->ops->enable(clk);
}
