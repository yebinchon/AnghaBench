
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int hw_stopped; int stopped; struct gs_port* driver_data; } ;
struct TYPE_3__ {int flags; } ;
struct gs_port {int xmit_head; int xmit_cnt; TYPE_2__* rd; TYPE_1__ port; int port_write_mutex; scalar_t__ xmit_buf; } ;
struct TYPE_4__ {int (* enable_tx_interrupts ) (struct gs_port*) ;} ;


 int ASYNC_INITIALIZED ;
 int GS_DEBUG_WRITE ;
 int GS_TX_INTEN ;
 int SERIAL_XMIT_SIZE ;
 int func_enter () ;
 int func_exit () ;
 int gs_dprintk (int ,char*,char*) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct gs_port*) ;

int gs_write(struct tty_struct * tty,
                    const unsigned char *buf, int count)
{
 struct gs_port *port;
 int c, total = 0;
 int t;

 func_enter ();

 port = tty->driver_data;

 if (!port) return 0;

 if (! (port->port.flags & ASYNC_INITIALIZED))
  return 0;




 mutex_lock(& port->port_write_mutex);

 while (1) {

  c = count;




  t = SERIAL_XMIT_SIZE - port->xmit_head;
  if (t < c) c = t;




  t = SERIAL_XMIT_SIZE - 1 - port->xmit_cnt;
  if (t < c) c = t;


  if (c <= 0) break;

  memcpy (port->xmit_buf + port->xmit_head, buf, c);

  port -> xmit_cnt += c;
  port -> xmit_head = (port->xmit_head + c) & (SERIAL_XMIT_SIZE -1);
  buf += c;
  count -= c;
  total += c;
 }
 mutex_unlock(& port->port_write_mutex);

 gs_dprintk (GS_DEBUG_WRITE, "write: interrupts are %s\n",
             (port->port.flags & GS_TX_INTEN)?"enabled": "disabled");

 if (port->xmit_cnt &&
     !tty->stopped &&
     !tty->hw_stopped &&
     !(port->port.flags & GS_TX_INTEN)) {
  port->port.flags |= GS_TX_INTEN;
  port->rd->enable_tx_interrupts (port);
 }
 func_exit ();
 return total;
}
