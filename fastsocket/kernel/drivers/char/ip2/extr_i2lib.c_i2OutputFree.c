
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i2DataHeader ;
typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {int Obuf_strip; int Obuf_stuff; int Obuf_spinlock; } ;


 scalar_t__ OBUF_SIZE ;
 int i2Validate (TYPE_1__*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
i2OutputFree(i2ChanStrPtr pCh)
{
 int amountToMove;
 unsigned long flags;


 if ( !i2Validate ( pCh ) ) {
  return -1;
 }
 read_lock_irqsave(&pCh->Obuf_spinlock, flags);
 amountToMove = pCh->Obuf_strip - pCh->Obuf_stuff - 1;
 read_unlock_irqrestore(&pCh->Obuf_spinlock, flags);

 if (amountToMove < 0) {
  amountToMove += OBUF_SIZE;
 }

 amountToMove -= sizeof(i2DataHeader);

 return (amountToMove < 0) ? 0 : amountToMove;
}
