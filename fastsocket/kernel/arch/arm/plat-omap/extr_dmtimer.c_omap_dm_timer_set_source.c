
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int fclk; } ;


 int EINVAL ;
 int __delay (int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_parent (int ,int ) ;
 int * dm_source_clocks ;

int omap_dm_timer_set_source(struct omap_dm_timer *timer, int source)
{
 int ret = -EINVAL;

 if (source < 0 || source >= 3)
  return -EINVAL;

 clk_disable(timer->fclk);
 ret = clk_set_parent(timer->fclk, dm_source_clocks[source]);
 clk_enable(timer->fclk);





 __delay(150000);

 return ret;
}
