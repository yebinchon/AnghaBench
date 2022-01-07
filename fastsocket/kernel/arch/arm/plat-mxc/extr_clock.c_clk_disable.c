
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int __clk_disable (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clk_disable(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return;

 mutex_lock(&clocks_mutex);
 __clk_disable(clk);
 mutex_unlock(&clocks_mutex);
}
