
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int tty; } ;
struct gs_port {TYPE_1__ port; } ;


 int ASYNC_SAK ;
 int TTY_BREAK ;
 int do_SAK (int ) ;
 int func_enter () ;
 int func_exit () ;
 int tty_insert_flip_char (int ,int ,int ) ;
 int tty_schedule_flip (int ) ;

void gs_got_break(struct gs_port *port)
{
 func_enter ();

 tty_insert_flip_char(port->port.tty, 0, TTY_BREAK);
 tty_schedule_flip(port->port.tty);
 if (port->port.flags & ASYNC_SAK) {
  do_SAK (port->port.tty);
 }

 func_exit ();
}
