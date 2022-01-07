
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
struct TYPE_5__ {unsigned char* Pbuf; int Pbuf_stuff; int Pbuf_spinlock; } ;
typedef TYPE_2__* PTTY ;


 int ip2_flush_chars (TYPE_2__*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
ip2_putchar( PTTY tty, unsigned char ch )
{
 i2ChanStrPtr pCh = tty->driver_data;
 unsigned long flags;



 write_lock_irqsave(&pCh->Pbuf_spinlock, flags);
 pCh->Pbuf[pCh->Pbuf_stuff++] = ch;
 if ( pCh->Pbuf_stuff == sizeof pCh->Pbuf ) {
  write_unlock_irqrestore(&pCh->Pbuf_spinlock, flags);
  ip2_flush_chars( tty );
 } else
  write_unlock_irqrestore(&pCh->Pbuf_spinlock, flags);
 return 1;


}
