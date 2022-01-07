
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633 {TYPE_1__* irq_handler; } ;
struct TYPE_2__ {int data; int (* handler ) (int,int ) ;} ;


 int stub1 (int,int ) ;

__attribute__((used)) static void pcf50633_irq_call_handler(struct pcf50633 *pcf, int irq)
{
 if (pcf->irq_handler[irq].handler)
  pcf->irq_handler[irq].handler(irq, pcf->irq_handler[irq].data);
}
