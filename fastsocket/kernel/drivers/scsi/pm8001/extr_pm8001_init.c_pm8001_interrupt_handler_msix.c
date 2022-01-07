
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pm8001_hba_info {int tasklet; int int_vector; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* isr ) (struct pm8001_hba_info*,int ) ;int (* is_our_interupt ) (struct pm8001_hba_info*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__* PM8001_CHIP_DISP ;
 struct pm8001_hba_info* outq_to_hba (void*) ;
 int stub1 (struct pm8001_hba_info*) ;
 int stub2 (struct pm8001_hba_info*,int ) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t pm8001_interrupt_handler_msix(int irq, void *opaque)
{
 struct pm8001_hba_info *pm8001_ha = outq_to_hba(opaque);
 u8 outq = *(u8 *)opaque;
 irqreturn_t ret = IRQ_HANDLED;
 if (unlikely(!pm8001_ha))
  return IRQ_NONE;
 if (!PM8001_CHIP_DISP->is_our_interupt(pm8001_ha))
  return IRQ_NONE;
 pm8001_ha->int_vector = outq;



 ret = PM8001_CHIP_DISP->isr(pm8001_ha, outq);

 return ret;
}
