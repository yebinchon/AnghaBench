
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int irq_occurred; int irq_spinlock; } ;


 int BIT12 ;
 int BIT13 ;
 int IO_PIN ;
 int MISCSTATUS_TXC_LATCHED ;
 int PCR ;
 scalar_t__ SICR_TXC_ACTIVE ;
 scalar_t__ SICR_TXC_INACTIVE ;
 int msleep_interruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usc_ClearIrqPendingBits (struct mgsl_struct*,int ) ;
 int usc_EnableInterrupts (struct mgsl_struct*,int ) ;
 int usc_EnableMasterIrqBit (struct mgsl_struct*) ;
 int usc_EnableStatusIrqs (struct mgsl_struct*,scalar_t__) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,unsigned short) ;
 int usc_UnlatchIostatusBits (struct mgsl_struct*,int ) ;
 int usc_reset (struct mgsl_struct*) ;

__attribute__((used)) static bool mgsl_irq_test( struct mgsl_struct *info )
{
 unsigned long EndTime;
 unsigned long flags;

 spin_lock_irqsave(&info->irq_spinlock,flags);
 usc_reset(info);






 info->irq_occurred = 0;





 usc_OutReg( info, PCR, (unsigned short)((usc_InReg(info, PCR) | BIT13) & ~BIT12) );

 usc_EnableMasterIrqBit(info);
 usc_EnableInterrupts(info, IO_PIN);
 usc_ClearIrqPendingBits(info, IO_PIN);

 usc_UnlatchIostatusBits(info, MISCSTATUS_TXC_LATCHED);
 usc_EnableStatusIrqs(info, SICR_TXC_ACTIVE + SICR_TXC_INACTIVE);

 spin_unlock_irqrestore(&info->irq_spinlock,flags);

 EndTime=100;
 while( EndTime-- && !info->irq_occurred ) {
  msleep_interruptible(10);
 }

 spin_lock_irqsave(&info->irq_spinlock,flags);
 usc_reset(info);
 spin_unlock_irqrestore(&info->irq_spinlock,flags);

 return info->irq_occurred;

}
