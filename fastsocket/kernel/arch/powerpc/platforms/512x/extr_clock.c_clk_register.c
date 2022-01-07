
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int node; } ;


 int clocks ;
 int clocks_mutex ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int clk_register(struct clk *clk)
{
 mutex_lock(&clocks_mutex);
 list_add(&clk->node, &clocks);
 mutex_unlock(&clocks_mutex);
 return 0;
}
