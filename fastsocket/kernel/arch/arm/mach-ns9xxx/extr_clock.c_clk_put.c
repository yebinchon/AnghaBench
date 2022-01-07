
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int refcount; int owner; } ;


 int module_put (int ) ;

void clk_put(struct clk *clk)
{
 module_put(clk->owner);
 --clk->refcount;
}
