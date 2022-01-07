
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; TYPE_1__* tty; } ;
struct specialix_port {unsigned char* xmit_buf; int lock; TYPE_2__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct specialix_board {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int ASYNC_INITIALIZED ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int TTY_IO_ERROR ;
 int clear_bit (int ,int *) ;
 int free_page (unsigned long) ;
 int func_enter () ;
 int func_exit () ;
 unsigned long get_zeroed_page (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_change_speed (struct specialix_board*,struct specialix_port*) ;

__attribute__((used)) static int sx_setup_port(struct specialix_board *bp,
      struct specialix_port *port)
{
 unsigned long flags;

 func_enter();

 if (port->port.flags & ASYNC_INITIALIZED) {
  func_exit();
  return 0;
 }

 if (!port->xmit_buf) {

  unsigned long tmp;

  tmp = get_zeroed_page(GFP_KERNEL);
  if (tmp == 0L) {
   func_exit();
   return -ENOMEM;
  }

  if (port->xmit_buf) {
   free_page(tmp);
   func_exit();
   return -ERESTARTSYS;
  }
  port->xmit_buf = (unsigned char *) tmp;
 }

 spin_lock_irqsave(&port->lock, flags);

 if (port->port.tty)
  clear_bit(TTY_IO_ERROR, &port->port.tty->flags);

 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
 sx_change_speed(bp, port);
 port->port.flags |= ASYNC_INITIALIZED;

 spin_unlock_irqrestore(&port->lock, flags);


 func_exit();
 return 0;
}
