
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int owner; } ;


 int IS_ERR (struct clk*) ;
 int clock_lock () ;
 int clock_unlock () ;
 int module_put (int ) ;

void clk_put(struct clk *clk)
{
 clock_lock();
 if (clk && !IS_ERR(clk))
  module_put(clk->owner);
 clock_unlock();
}
