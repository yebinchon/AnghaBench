
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_enable_unlocked (struct clk*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int clk_enable(struct clk *clk)
{
 mutex_lock(&clocks_mutex);
 clk_enable_unlocked(clk);
 mutex_unlock(&clocks_mutex);
 return 0;
}
