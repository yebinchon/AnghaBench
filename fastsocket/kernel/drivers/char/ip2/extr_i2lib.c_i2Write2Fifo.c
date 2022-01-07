
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {int i2eFifoRemains; int write_fifo_spinlock; int i2eOutMailWaiting; int i2eWaitingForEmptyFifo; } ;


 int MB_OUT_STUFFED ;
 int iiWriteBuf (TYPE_1__*,unsigned char*,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
i2Write2Fifo(i2eBordStrPtr pB, unsigned char *source, int count,int reserve)
{
 int rc = 0;
 unsigned long flags;
 write_lock_irqsave(&pB->write_fifo_spinlock, flags);
 if (!pB->i2eWaitingForEmptyFifo) {
  if (pB->i2eFifoRemains > (count+reserve)) {
   pB->i2eFifoRemains -= count;
   iiWriteBuf(pB, source, count);
   pB->i2eOutMailWaiting |= MB_OUT_STUFFED;
   rc = count;
  }
 }
 write_unlock_irqrestore(&pB->write_fifo_spinlock, flags);
 return rc;
}
