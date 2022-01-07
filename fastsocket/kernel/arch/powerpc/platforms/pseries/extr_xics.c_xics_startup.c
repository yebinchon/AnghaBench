
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ msi_desc; } ;


 TYPE_1__* irq_to_desc (unsigned int) ;
 int unmask_msi_irq (unsigned int) ;
 int xics_unmask_irq (unsigned int) ;

__attribute__((used)) static unsigned int xics_startup(unsigned int virq)
{





 if (irq_to_desc(virq)->msi_desc)
  unmask_msi_irq(virq);


 xics_unmask_irq(virq);
 return 0;
}
