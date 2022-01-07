
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* action; } ;
struct TYPE_3__ {int flags; } ;


 int IRQF_DISABLED ;
 int i8259a_startup_irq (int) ;
 TYPE_2__* irq_desc ;

__attribute__((used)) static unsigned int
jensen_local_startup(unsigned int irq)
{

 if (irq == 7)
  i8259a_startup_irq(1);
 else




  if (irq_desc[irq].action)
   irq_desc[irq].action->flags |= IRQF_DISABLED;
 return 0;
}
