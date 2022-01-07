
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_3__ {int data_rate; } ;
struct slgt_info {int irq_occurred; void* init_error; TYPE_2__ port; TYPE_1__ params; int lock; } ;


 int BIT1 ;
 void* DiagStatus_IrqFailure ;
 int ENODEV ;
 int IRQ_TXIDLE ;
 int TCR ;
 int TDR ;
 int async_mode (struct slgt_info*) ;
 int msleep_interruptible (int) ;
 int rd_reg16 (struct slgt_info*,int ) ;
 int reset_port (struct slgt_info*) ;
 int slgt_irq_on (struct slgt_info*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static int irq_test(struct slgt_info *info)
{
 unsigned long timeout;
 unsigned long flags;
 struct tty_struct *oldtty = info->port.tty;
 u32 speed = info->params.data_rate;

 info->params.data_rate = 921600;
 info->port.tty = ((void*)0);

 spin_lock_irqsave(&info->lock, flags);
 async_mode(info);
 slgt_irq_on(info, IRQ_TXIDLE);


 wr_reg16(info, TCR,
  (unsigned short)(rd_reg16(info, TCR) | BIT1));


 wr_reg16(info, TDR, 0);


 info->init_error = DiagStatus_IrqFailure;
 info->irq_occurred = 0;

 spin_unlock_irqrestore(&info->lock, flags);

 timeout=100;
 while(timeout-- && !info->irq_occurred)
  msleep_interruptible(10);

 spin_lock_irqsave(&info->lock,flags);
 reset_port(info);
 spin_unlock_irqrestore(&info->lock,flags);

 info->params.data_rate = speed;
 info->port.tty = oldtty;

 info->init_error = info->irq_occurred ? 0 : DiagStatus_IrqFailure;
 return info->irq_occurred ? 0 : -ENODEV;
}
