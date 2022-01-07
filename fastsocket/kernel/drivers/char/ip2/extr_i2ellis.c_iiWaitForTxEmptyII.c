
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_6__ {int i2ePointer; int i2eStatus; } ;


 int Dl_spinlock ;
 int I2EE_GOOD ;
 int I2EE_TXE_TIME ;
 int I2_COMPLETE (TYPE_1__*,int ) ;
 int I2_UPDATE_FIFO_ROOM (TYPE_1__*) ;
 int SEL_CMD_SH ;
 int SEL_CMD_UNSH ;
 int SEL_COMMAND ;
 int ST_IN_EMPTY ;
 int iiDelay (TYPE_1__*,int) ;
 int inb (int ) ;
 int outb (int ,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
iiWaitForTxEmptyII(i2eBordStrPtr pB, int mSdelay)
{
 unsigned long flags;
 int itemp;

 for (;;)
 {
  write_lock_irqsave(&Dl_spinlock, flags);
  outb(SEL_COMMAND, pB->i2ePointer);
  outb(SEL_CMD_SH, pB->i2ePointer);

  itemp = inb(pB->i2eStatus);

  outb(SEL_COMMAND, pB->i2ePointer);
  outb(SEL_CMD_UNSH, pB->i2ePointer);

  if (itemp & ST_IN_EMPTY)
  {
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
