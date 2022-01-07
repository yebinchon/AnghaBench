
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l14_limit; } ;


 int sbus_writel (unsigned int,int *) ;
 TYPE_1__** timers_percpu ;

__attribute__((used)) static void sun4m_load_profile_irq(int cpu, unsigned int limit)
{
 sbus_writel(limit, &timers_percpu[cpu]->l14_limit);
}
