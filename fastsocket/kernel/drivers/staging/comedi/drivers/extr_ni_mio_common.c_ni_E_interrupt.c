
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mite_struct {scalar_t__ mite_io_addr; } ;
struct comedi_device {scalar_t__ attached; int spinlock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {unsigned short (* stc_readw ) (struct comedi_device*,int ) ;int mite_channel_lock; TYPE_1__* ao_mite_chan; TYPE_1__* ai_mite_chan; struct mite_struct* mite; } ;
struct TYPE_3__ {int channel; } ;


 int AI_Status_1_Register ;
 int AO_Status_1_Register ;
 int CHOR_CLRLC ;
 unsigned int CHSR_INT ;
 unsigned int CHSR_LINKC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned short Interrupt_A_St ;
 unsigned short Interrupt_B_St ;
 scalar_t__ MITE_CHOR (int ) ;
 int ack_a_interrupt (struct comedi_device*,unsigned short) ;
 int ack_b_interrupt (struct comedi_device*,unsigned short) ;
 TYPE_2__* devpriv ;
 int handle_a_interrupt (struct comedi_device*,unsigned short,unsigned int) ;
 int handle_b_interrupt (struct comedi_device*,unsigned short,unsigned int) ;
 int handle_cdio_interrupt (struct comedi_device*) ;
 int handle_gpct_interrupt (struct comedi_device*,int) ;
 unsigned int mite_get_status (TYPE_1__*) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned short stub1 (struct comedi_device*,int ) ;
 unsigned short stub2 (struct comedi_device*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t ni_E_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned short a_status;
 unsigned short b_status;
 unsigned int ai_mite_status = 0;
 unsigned int ao_mite_status = 0;
 unsigned long flags;




 if (dev->attached == 0)
  return IRQ_NONE;
 smp_mb();


 spin_lock_irqsave(&dev->spinlock, flags);
 a_status = devpriv->stc_readw(dev, AI_Status_1_Register);
 b_status = devpriv->stc_readw(dev, AO_Status_1_Register);
 ack_a_interrupt(dev, a_status);
 ack_b_interrupt(dev, b_status);
 if ((a_status & Interrupt_A_St) || (ai_mite_status & CHSR_INT))
  handle_a_interrupt(dev, a_status, ai_mite_status);
 if ((b_status & Interrupt_B_St) || (ao_mite_status & CHSR_INT))
  handle_b_interrupt(dev, b_status, ao_mite_status);
 handle_gpct_interrupt(dev, 0);
 handle_gpct_interrupt(dev, 1);
 handle_cdio_interrupt(dev);

 spin_unlock_irqrestore(&dev->spinlock, flags);
 return IRQ_HANDLED;
}
