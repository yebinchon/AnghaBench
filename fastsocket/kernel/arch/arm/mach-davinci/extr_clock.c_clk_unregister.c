
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int node; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int clocks_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clk_unregister(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return;

 mutex_lock(&clocks_mutex);
 list_del(&clk->node);
 mutex_unlock(&clocks_mutex);
}
