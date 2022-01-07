
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clock_lock () ;
 int clock_unlock () ;
 int local_clk_use (struct clk*) ;

int clk_enable(struct clk *clk)
{
 int ret = 0;

 clock_lock();
 ret = local_clk_use(clk);
 clock_unlock();
 return ret;
}
