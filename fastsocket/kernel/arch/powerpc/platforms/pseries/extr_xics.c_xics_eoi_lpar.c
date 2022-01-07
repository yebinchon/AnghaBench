
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwirq; } ;


 int iosync () ;
 TYPE_1__* irq_map ;
 int lpar_xirr_info_set (int) ;

__attribute__((used)) static void xics_eoi_lpar(unsigned int virq)
{
 unsigned int irq = (unsigned int)irq_map[virq].hwirq;

 iosync();
 lpar_xirr_info_set((0xff << 24) | irq);
}
