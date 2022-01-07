
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_disable_unlocked (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clk_disable(struct clk *clk)
{
 mutex_lock(&clocks_mutex);
 clk_disable_unlocked(clk);
 mutex_unlock(&clocks_mutex);
}
