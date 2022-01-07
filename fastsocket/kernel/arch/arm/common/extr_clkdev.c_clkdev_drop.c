
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int node; } ;


 int clocks_mutex ;
 int kfree (struct clk_lookup*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clkdev_drop(struct clk_lookup *cl)
{
 mutex_lock(&clocks_mutex);
 list_del(&cl->node);
 mutex_unlock(&clocks_mutex);
 kfree(cl);
}
