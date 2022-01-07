
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* outputb ) (TYPE_1__*,int ,int) ;} ;
struct smi_info {TYPE_1__ io; } ;
typedef int irqreturn_t ;


 int IPMI_BT_INTMASK_CLEAR_IRQ_BIT ;
 int IPMI_BT_INTMASK_ENABLE_IRQ_BIT ;
 int IPMI_BT_INTMASK_REG ;
 int si_irq_handler (int,void*) ;
 int stub1 (TYPE_1__*,int ,int) ;

__attribute__((used)) static irqreturn_t si_bt_irq_handler(int irq, void *data)
{
 struct smi_info *smi_info = data;

 smi_info->io.outputb(&smi_info->io, IPMI_BT_INTMASK_REG,
        IPMI_BT_INTMASK_CLEAR_IRQ_BIT
        | IPMI_BT_INTMASK_ENABLE_IRQ_BIT);
 return si_irq_handler(irq, data);
}
