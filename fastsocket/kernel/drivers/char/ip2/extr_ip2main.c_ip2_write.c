
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_7__ {TYPE_1__* driver_data; } ;
struct TYPE_6__ {int Pbuf_spinlock; } ;
typedef TYPE_2__* PTTY ;


 int CHANN ;
 int ITRC_ENTER ;
 int ITRC_RETURN ;
 int ITRC_WRITE ;
 int i2Output (TYPE_1__*,unsigned char const*,int) ;
 int ip2_flush_chars (TYPE_2__*) ;
 int ip2trace (int ,int ,int ,int,int,...) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
ip2_write( PTTY tty, const unsigned char *pData, int count)
{
 i2ChanStrPtr pCh = tty->driver_data;
 int bytesSent = 0;
 unsigned long flags;

 ip2trace (CHANN, ITRC_WRITE, ITRC_ENTER, 2, count, -1 );


 ip2_flush_chars( tty );


 write_lock_irqsave(&pCh->Pbuf_spinlock, flags);
 bytesSent = i2Output( pCh, pData, count);
 write_unlock_irqrestore(&pCh->Pbuf_spinlock, flags);

 ip2trace (CHANN, ITRC_WRITE, ITRC_RETURN, 1, bytesSent );

 return bytesSent > 0 ? bytesSent : 0;
}
