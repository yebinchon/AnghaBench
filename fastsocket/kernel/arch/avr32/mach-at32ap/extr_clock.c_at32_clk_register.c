
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int list; } ;


 int at32_clock_list ;
 int clk_list_lock ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void at32_clk_register(struct clk *clk)
{
 spin_lock(&clk_list_lock);

 list_add_tail(&clk->list, &at32_clock_list);
 spin_unlock(&clk_list_lock);
}
