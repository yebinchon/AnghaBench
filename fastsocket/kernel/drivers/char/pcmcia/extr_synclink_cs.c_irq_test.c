
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int testing_irq; int irq_occurred; int lock; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ CHA ;
 int CMD_START_TIMER ;
 int IRQ_TIMER ;
 scalar_t__ TIMR ;
 int hdlc_mode (TYPE_1__*) ;
 int irq_enable (TYPE_1__*,scalar_t__,int ) ;
 int issue_command (TYPE_1__*,scalar_t__,int ) ;
 int msleep_interruptible (int) ;
 int reset_device (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_reg (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static bool irq_test(MGSLPC_INFO *info)
{
 unsigned long end_time;
 unsigned long flags;

 spin_lock_irqsave(&info->lock,flags);
 reset_device(info);

 info->testing_irq = 1;
 hdlc_mode(info);

 info->irq_occurred = 0;



 irq_enable(info, CHA, IRQ_TIMER);
 write_reg(info, CHA + TIMR, 0);
 issue_command(info, CHA, CMD_START_TIMER);

 spin_unlock_irqrestore(&info->lock,flags);

 end_time=100;
 while(end_time-- && !info->irq_occurred) {
  msleep_interruptible(10);
 }

 info->testing_irq = 0;

 spin_lock_irqsave(&info->lock,flags);
 reset_device(info);
 spin_unlock_irqrestore(&info->lock,flags);

 return info->irq_occurred;
}
