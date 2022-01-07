
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmcmsptwi_data {int wait; int last_result; scalar_t__ iobase; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MSP_TWI_INT_STS_DONE ;
 scalar_t__ MSP_TWI_INT_STS_REG_OFFSET ;
 int complete (int *) ;
 int dev_dbg (int *,char*,int) ;
 TYPE_1__ pmcmsptwi_adapter ;
 int pmcmsptwi_get_result (int) ;
 int pmcmsptwi_readl (scalar_t__) ;
 int pmcmsptwi_writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t pmcmsptwi_interrupt(int irq, void *ptr)
{
 struct pmcmsptwi_data *data = ptr;

 u32 reason = pmcmsptwi_readl(data->iobase +
     MSP_TWI_INT_STS_REG_OFFSET);
 pmcmsptwi_writel(reason, data->iobase + MSP_TWI_INT_STS_REG_OFFSET);

 dev_dbg(&pmcmsptwi_adapter.dev, "Got interrupt 0x%08x\n", reason);
 if (!(reason & MSP_TWI_INT_STS_DONE))
  return IRQ_NONE;

 data->last_result = pmcmsptwi_get_result(reason);
 complete(&data->wait);

 return IRQ_HANDLED;
}
