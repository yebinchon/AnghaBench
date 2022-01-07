
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i2ChanStrPtr ;
struct TYPE_4__ {int driver_data; } ;
typedef TYPE_1__* PTTY ;


 int i2DrainOutput (int ,int) ;
 int jiffies ;
 int tty_wait_until_sent (TYPE_1__*,int) ;

__attribute__((used)) static void
ip2_wait_until_sent ( PTTY tty, int timeout )
{
 int i = jiffies;
 i2ChanStrPtr pCh = tty->driver_data;

 tty_wait_until_sent(tty, timeout );
 if ( (i = timeout - (jiffies -i)) > 0)
  i2DrainOutput( pCh, i );
}
