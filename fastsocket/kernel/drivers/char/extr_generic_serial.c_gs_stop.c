
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct gs_port* driver_data; } ;
struct TYPE_3__ {int flags; } ;
struct gs_port {TYPE_2__* rd; TYPE_1__ port; scalar_t__ xmit_buf; scalar_t__ xmit_cnt; } ;
struct TYPE_4__ {int (* disable_tx_interrupts ) (struct gs_port*) ;} ;


 int GS_TX_INTEN ;
 int func_enter () ;
 int func_exit () ;
 int stub1 (struct gs_port*) ;

void gs_stop(struct tty_struct * tty)
{
 struct gs_port *port;

 func_enter ();

 port = tty->driver_data;

 if (!port) return;

 if (port->xmit_cnt &&
     port->xmit_buf &&
     (port->port.flags & GS_TX_INTEN) ) {
  port->port.flags &= ~GS_TX_INTEN;
  port->rd->disable_tx_interrupts (port);
 }
 func_exit ();
}
