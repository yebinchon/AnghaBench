
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slb_cache_ptr; } ;


 int WARN_ON (int) ;
 int __slb_flush_and_rebolt () ;
 TYPE_1__* get_paca () ;
 int hard_irq_disable () ;
 int irqs_disabled () ;

void slb_flush_and_rebolt(void)
{

 WARN_ON(!irqs_disabled());





 hard_irq_disable();

 __slb_flush_and_rebolt();
 get_paca()->slb_cache_ptr = 0;
}
