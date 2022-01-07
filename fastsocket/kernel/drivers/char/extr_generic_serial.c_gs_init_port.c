
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; TYPE_2__* tty; } ;
struct gs_port {unsigned char* xmit_buf; int driver_lock; TYPE_1__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; int port_write_mutex; } ;
struct TYPE_4__ {int flags; } ;


 int ASYNC_INITIALIZED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GS_TX_INTEN ;
 int TTY_IO_ERROR ;
 int clear_bit (int ,int *) ;
 int free_page (unsigned long) ;
 int func_enter () ;
 int func_exit () ;
 unsigned long get_zeroed_page (int ) ;
 int gs_set_termios (TYPE_2__*,int *) ;
 int mutex_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int gs_init_port(struct gs_port *port)
{
 unsigned long flags;

 func_enter ();

 if (port->port.flags & ASYNC_INITIALIZED) {
  func_exit ();
  return 0;
 }
 if (!port->xmit_buf) {

  unsigned long tmp;

  tmp = get_zeroed_page(GFP_KERNEL);
  spin_lock_irqsave (&port->driver_lock, flags);
  if (port->xmit_buf)
   free_page (tmp);
  else
   port->xmit_buf = (unsigned char *) tmp;
  spin_unlock_irqrestore(&port->driver_lock, flags);
  if (!port->xmit_buf) {
   func_exit ();
   return -ENOMEM;
  }
 }

 spin_lock_irqsave (&port->driver_lock, flags);
 if (port->port.tty)
  clear_bit(TTY_IO_ERROR, &port->port.tty->flags);
 mutex_init(&port->port_write_mutex);
 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
 spin_unlock_irqrestore(&port->driver_lock, flags);
 gs_set_termios(port->port.tty, ((void*)0));
 spin_lock_irqsave (&port->driver_lock, flags);
 port->port.flags |= ASYNC_INITIALIZED;
 port->port.flags &= ~GS_TX_INTEN;

 spin_unlock_irqrestore(&port->driver_lock, flags);
 func_exit ();
 return 0;
}
