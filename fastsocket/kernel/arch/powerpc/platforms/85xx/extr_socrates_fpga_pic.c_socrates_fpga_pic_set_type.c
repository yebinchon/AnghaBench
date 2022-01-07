
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EINVAL ;
 int FPGA_PIC_IRQCFG ;


 scalar_t__ IRQ_TYPE_NONE ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 TYPE_1__* fpga_irqs ;
 unsigned int socrates_fpga_irq_to_hw (unsigned int) ;
 int socrates_fpga_pic_lock ;
 int socrates_fpga_pic_read (int ) ;
 int socrates_fpga_pic_write (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int socrates_fpga_pic_set_type(unsigned int virq,
  unsigned int flow_type)
{
 unsigned long flags;
 unsigned int hwirq;
 int polarity;
 u32 mask;

 hwirq = socrates_fpga_irq_to_hw(virq);

 if (fpga_irqs[hwirq].type != IRQ_TYPE_NONE)
  return -EINVAL;

 switch (flow_type & IRQ_TYPE_SENSE_MASK) {
 case 129:
  polarity = 1;
  break;
 case 128:
  polarity = 0;
  break;
 default:
  return -EINVAL;
 }
 spin_lock_irqsave(&socrates_fpga_pic_lock, flags);
 mask = socrates_fpga_pic_read(FPGA_PIC_IRQCFG);
 if (polarity)
  mask |= (1 << hwirq);
 else
  mask &= ~(1 << hwirq);
 socrates_fpga_pic_write(FPGA_PIC_IRQCFG, mask);
 spin_unlock_irqrestore(&socrates_fpga_pic_lock, flags);
 return 0;
}
