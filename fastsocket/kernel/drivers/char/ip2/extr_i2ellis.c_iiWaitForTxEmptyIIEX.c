
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_6__ {int i2eStatus; } ;


 int Dl_spinlock ;
 int I2EE_GOOD ;
 int I2EE_TXE_TIME ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 int I2_UPDATE_FIFO_ROOM (TYPE_1__*) ;
 int STE_OUT_MT ;
 int iiDelay (TYPE_1__*,int) ;
 int inb (int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
iiWaitForTxEmptyIIEX(i2eBordStrPtr pB, int mSdelay)
{
 unsigned long flags;

 for (;;)
 {






  write_lock_irqsave(&Dl_spinlock, flags);

  if (inb(pB->i2eStatus) & STE_OUT_MT) {
   I2_UPDATE_FIFO_ROOM(pB);
   write_unlock_irqrestore(&Dl_spinlock, flags);
   I2_COMPLETE(pB, I2EE_GOOD);
  }
  write_unlock_irqrestore(&Dl_spinlock, flags);

  if (mSdelay-- == 0)
   break;

  iiDelay(pB, 1);
 }
 I2_COMPLETE(pB, I2EE_TXE_TIME);
}
