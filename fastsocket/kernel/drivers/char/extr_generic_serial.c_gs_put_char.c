
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gs_port* driver_data; } ;
struct TYPE_2__ {int flags; } ;
struct gs_port {int xmit_cnt; unsigned char* xmit_buf; int xmit_head; int port_write_mutex; TYPE_1__ port; } ;


 int ASYNC_INITIALIZED ;
 int SERIAL_XMIT_SIZE ;
 int func_enter () ;
 int func_exit () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int gs_put_char(struct tty_struct * tty, unsigned char ch)
{
 struct gs_port *port;

 func_enter ();

 port = tty->driver_data;

 if (!port) return 0;

 if (! (port->port.flags & ASYNC_INITIALIZED)) return 0;


 mutex_lock(& port->port_write_mutex);

 if (port->xmit_cnt >= SERIAL_XMIT_SIZE - 1) {

  mutex_unlock(&port->port_write_mutex);
  return 0;
 }

 port->xmit_buf[port->xmit_head++] = ch;
 port->xmit_head &= SERIAL_XMIT_SIZE - 1;
 port->xmit_cnt++;

 mutex_unlock(&port->port_write_mutex);
 func_exit ();
 return 1;
}
