
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clock_lock () ;
 int clock_unlock () ;
 int local_clk_unuse (struct clk*) ;

void clk_disable(struct clk *clk)
{
 clock_lock();
 local_clk_unuse(clk);
 clock_unlock();
}
