
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
struct TYPE_5__ {int Pbuf_stuff; int Pbuf_spinlock; int * Pbuf; } ;
typedef TYPE_2__* PTTY ;


 int i2Output (TYPE_1__*,int *,int) ;
 int memmove (int *,int *,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ip2_flush_chars( PTTY tty )
{
 int strip;
 i2ChanStrPtr pCh = tty->driver_data;
 unsigned long flags;

 write_lock_irqsave(&pCh->Pbuf_spinlock, flags);
 if ( pCh->Pbuf_stuff ) {






  strip = i2Output( pCh, pCh->Pbuf, pCh->Pbuf_stuff);
  if ( strip != pCh->Pbuf_stuff ) {
   memmove( pCh->Pbuf, &pCh->Pbuf[strip], pCh->Pbuf_stuff - strip );
  }
  pCh->Pbuf_stuff -= strip;
 }
 write_unlock_irqrestore(&pCh->Pbuf_spinlock, flags);
}
