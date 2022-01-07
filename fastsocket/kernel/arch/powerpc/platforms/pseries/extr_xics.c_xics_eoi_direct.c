
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwirq; } ;


 int direct_xirr_info_set (int) ;
 int iosync () ;
 TYPE_1__* irq_map ;

__attribute__((used)) static void xics_eoi_direct(unsigned int virq)
{
 unsigned int irq = (unsigned int)irq_map[virq].hwirq;

 iosync();
 direct_xirr_info_set((0xff << 24) | irq);
}
