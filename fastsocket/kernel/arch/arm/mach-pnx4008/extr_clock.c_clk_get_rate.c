
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate; } ;


 int clock_lock () ;
 int clock_unlock () ;

unsigned long clk_get_rate(struct clk *clk)
{
 unsigned long ret;
 clock_lock();
 ret = clk->rate;
 clock_unlock();
 return ret;
}
