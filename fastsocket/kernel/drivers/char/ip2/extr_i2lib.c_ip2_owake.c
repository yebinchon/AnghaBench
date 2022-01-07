
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i2ChanStrPtr ;
struct TYPE_4__ {int flags; int driver_data; } ;
typedef TYPE_1__* PTTY ;


 int CHANN ;
 int ITRC_SICMD ;
 int TTY_DO_WRITE_WAKEUP ;
 int ip2trace (int ,int ,int,int,int ,int) ;
 int tty_wakeup (TYPE_1__*) ;

__attribute__((used)) static void

ip2_owake( PTTY tp)
{
 i2ChanStrPtr pCh;

 if (tp == ((void*)0)) return;

 pCh = tp->driver_data;

 ip2trace (CHANN, ITRC_SICMD, 10, 2, tp->flags,
   (1 << TTY_DO_WRITE_WAKEUP) );

 tty_wakeup(tp);
}
