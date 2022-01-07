
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int flags; } ;
struct moxa_port {TYPE_1__ port; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int MoxaPortFlushData (struct moxa_port*,int) ;
 int moxa_shut_down (struct tty_struct*) ;
 int tty_port_tty_set (TYPE_1__*,int *) ;

__attribute__((used)) static void moxa_close_port(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;
 moxa_shut_down(tty);
 MoxaPortFlushData(ch, 2);
 ch->port.flags &= ~ASYNC_NORMAL_ACTIVE;
 tty->driver_data = ((void*)0);
 tty_port_tty_set(&ch->port, ((void*)0));
}
