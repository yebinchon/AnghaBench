
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l10_timer_limit; } ;


 int sbus_readl (int *) ;
 TYPE_1__* sun4d_timers ;

__attribute__((used)) static void sun4d_clear_clock_irq(void)
{
 sbus_readl(&sun4d_timers->l10_timer_limit);
}
