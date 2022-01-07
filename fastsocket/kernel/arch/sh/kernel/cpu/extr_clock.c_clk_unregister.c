
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int node; int sibling; } ;


 int clock_list_sem ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clk_unregister(struct clk *clk)
{
 mutex_lock(&clock_list_sem);
 list_del(&clk->sibling);
 list_del(&clk->node);
 mutex_unlock(&clock_list_sem);
}
