
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_xor_chan {int irq_tasklet; TYPE_2__* device; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int ) ;
 int mv_chan_get_intr_cause (struct mv_xor_chan*) ;
 scalar_t__ mv_is_err_intr (int ) ;
 int mv_xor_device_clear_eoc_cause (struct mv_xor_chan*) ;
 int mv_xor_err_interrupt_handler (struct mv_xor_chan*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mv_xor_interrupt_handler(int irq, void *data)
{
 struct mv_xor_chan *chan = data;
 u32 intr_cause = mv_chan_get_intr_cause(chan);

 dev_dbg(chan->device->common.dev, "intr cause %x\n", intr_cause);

 if (mv_is_err_intr(intr_cause))
  mv_xor_err_interrupt_handler(chan, intr_cause);

 tasklet_schedule(&chan->irq_tasklet);

 mv_xor_device_clear_eoc_cause(chan);

 return IRQ_HANDLED;
}
