
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct ktermios* termios; scalar_t__ stopped; struct gs_port* driver_data; } ;
struct ktermios {scalar_t__ c_iflag; scalar_t__ c_oflag; int c_cflag; scalar_t__ c_lflag; scalar_t__ c_line; int c_cc; } ;
struct TYPE_6__ {int open_wait; } ;
struct TYPE_4__ {int flags; struct tty_struct* tty; } ;
struct gs_port {int baud_base; int custom_divisor; int baud; int wakeup_chars; TYPE_3__ gs; TYPE_2__* rd; TYPE_1__ port; } ;
struct TYPE_5__ {int (* set_real_termios ) (struct gs_port*) ;} ;


 int ASYNC_SPD_CUST ;
 int ASYNC_SPD_HI ;
 int ASYNC_SPD_MASK ;
 int ASYNC_SPD_SHI ;
 int ASYNC_SPD_VHI ;
 int ASYNC_SPD_WARP ;
 int B38400 ;
 int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;
 int GS_DEBUG_TERMIOS ;
 int HZ ;
 int MAX_SCHEDULE_TIMEOUT ;
 int NCC ;
 int SERIAL_XMIT_SIZE ;
 int func_enter () ;
 int func_exit () ;
 int gs_debug ;
 int gs_dprintk (int,char*,...) ;
 int gs_start (struct tty_struct*) ;
 int gs_wait_tx_flushed (struct gs_port*,int ) ;
 int memcmp (int ,int ,int ) ;
 int printk (char*) ;
 int stub1 (struct gs_port*) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

void gs_set_termios (struct tty_struct * tty,
                     struct ktermios * old_termios)
{
 struct gs_port *port;
 int baudrate, tmp, rv;
 struct ktermios *tiosp;

 func_enter();

 port = tty->driver_data;

 if (!port) return;
 if (!port->port.tty) {

  gs_dprintk (GS_DEBUG_TERMIOS, "gs: Odd: port->port.tty is NULL\n");
  port->port.tty = tty;
 }


 tiosp = tty->termios;

 if (gs_debug & GS_DEBUG_TERMIOS) {
  gs_dprintk (GS_DEBUG_TERMIOS, "termios structure (%p):\n", tiosp);
 }

 if(old_termios && (gs_debug & GS_DEBUG_TERMIOS)) {
  if(tiosp->c_iflag != old_termios->c_iflag) printk("c_iflag changed\n");
  if(tiosp->c_oflag != old_termios->c_oflag) printk("c_oflag changed\n");
  if(tiosp->c_cflag != old_termios->c_cflag) printk("c_cflag changed\n");
  if(tiosp->c_lflag != old_termios->c_lflag) printk("c_lflag changed\n");
  if(tiosp->c_line != old_termios->c_line) printk("c_line changed\n");
  if(!memcmp(tiosp->c_cc, old_termios->c_cc, NCC)) printk("c_cc changed\n");
 }

 baudrate = tty_get_baud_rate(tty);

 if ((tiosp->c_cflag & CBAUD) == B38400) {
  if ( (port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_HI)
   baudrate = 57600;
  else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI)
   baudrate = 115200;
  else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_SHI)
   baudrate = 230400;
  else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_WARP)
   baudrate = 460800;
  else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST)
   baudrate = (port->baud_base / port->custom_divisor);
 }






 port->baud = baudrate;



 tmp = (baudrate / 10 / HZ) * 2;

 if (tmp < 0) tmp = 0;
 if (tmp >= SERIAL_XMIT_SIZE) tmp = SERIAL_XMIT_SIZE-1;

 port->wakeup_chars = tmp;



 rv = gs_wait_tx_flushed (port, MAX_SCHEDULE_TIMEOUT);
 if (rv < 0) return ;

 rv = port->rd->set_real_termios(port);
 if (rv < 0) return ;

 if ((!old_termios ||
      (old_termios->c_cflag & CRTSCTS)) &&
     !( tiosp->c_cflag & CRTSCTS)) {
  tty->stopped = 0;
  gs_start(tty);
 }
 func_exit();
 return ;
}
