
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; struct gs_port* driver_data; } ;
struct TYPE_3__ {int flags; } ;
struct gs_port {scalar_t__ xmit_cnt; TYPE_2__* rd; TYPE_1__ port; int xmit_buf; } ;
struct TYPE_4__ {int (* enable_tx_interrupts ) (struct gs_port*) ;} ;


 int GS_TX_INTEN ;
 int func_enter () ;
 int func_exit () ;
 int stub1 (struct gs_port*) ;

void gs_flush_chars(struct tty_struct * tty)
{
 struct gs_port *port;

 func_enter ();

 port = tty->driver_data;

 if (!port) return;

 if (port->xmit_cnt <= 0 || tty->stopped || tty->hw_stopped ||
     !port->xmit_buf) {
  func_exit ();
  return;
 }


 port->port.flags |= GS_TX_INTEN;
 port->rd->enable_tx_interrupts (port);
 func_exit ();
}
