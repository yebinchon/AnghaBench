
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int node; } ;


 int clocks ;
 int clocks_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clkdev_add(struct clk_lookup *cl)
{
 mutex_lock(&clocks_mutex);
 list_add_tail(&cl->node, &clocks);
 mutex_unlock(&clocks_mutex);
}
