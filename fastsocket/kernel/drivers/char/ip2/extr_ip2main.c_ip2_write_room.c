
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
struct TYPE_5__ {int Pbuf_stuff; int Pbuf_spinlock; } ;
typedef TYPE_2__* PTTY ;


 int CHANN ;
 int ITRC_WRITE ;
 int i2OutputFree (TYPE_1__*) ;
 int ip2trace (int ,int ,int,int,int) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
ip2_write_room ( PTTY tty )
{
 int bytesFree;
 i2ChanStrPtr pCh = tty->driver_data;
 unsigned long flags;

 read_lock_irqsave(&pCh->Pbuf_spinlock, flags);
 bytesFree = i2OutputFree( pCh ) - pCh->Pbuf_stuff;
 read_unlock_irqrestore(&pCh->Pbuf_spinlock, flags);

 ip2trace (CHANN, ITRC_WRITE, 11, 1, bytesFree );

 return ((bytesFree > 0) ? bytesFree : 0);
}
