
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct TYPE_2__ {int flags; struct tty_struct* tty; } ;
struct specialix_port {TYPE_1__ port; scalar_t__ IER; int * xmit_buf; int * hits; int overrun; } ;
struct specialix_board {int count; int lock; } ;


 int ASYNC_INITIALIZED ;
 scalar_t__ CCR_SOFTRESET ;
 int CD186x_CAR ;
 int CD186x_CCR ;
 int CD186x_IER ;
 int CD186x_MSVDTR ;
 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int SX_DEBUG_FIFO ;
 int TTY_IO_ERROR ;
 int board_No (struct specialix_board*) ;
 int dprintk (int,char*,...) ;
 int free_page (unsigned long) ;
 int func_enter () ;
 int func_exit () ;
 scalar_t__ port_No (struct specialix_port*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_debug ;
 int sx_out (struct specialix_board*,int ,scalar_t__) ;
 int sx_shutdown_board (struct specialix_board*) ;
 int sx_wait_CCR (struct specialix_board*) ;

__attribute__((used)) static void sx_shutdown_port(struct specialix_board *bp,
      struct specialix_port *port)
{
 struct tty_struct *tty;
 int i;
 unsigned long flags;

 func_enter();

 if (!(port->port.flags & ASYNC_INITIALIZED)) {
  func_exit();
  return;
 }

 if (sx_debug & SX_DEBUG_FIFO) {
  dprintk(SX_DEBUG_FIFO,
   "sx%d: port %d: %ld overruns, FIFO hits [ ",
    board_No(bp), port_No(port), port->overrun);
  for (i = 0; i < 10; i++)
   dprintk(SX_DEBUG_FIFO, "%ld ", port->hits[i]);
  dprintk(SX_DEBUG_FIFO, "].\n");
 }

 if (port->xmit_buf) {
  free_page((unsigned long) port->xmit_buf);
  port->xmit_buf = ((void*)0);
 }


 spin_lock_irqsave(&bp->lock, flags);
 sx_out(bp, CD186x_CAR, port_No(port));

 tty = port->port.tty;
 if (tty == ((void*)0) || C_HUPCL(tty)) {

  sx_out(bp, CD186x_MSVDTR, 0);
 }
 spin_unlock_irqrestore(&bp->lock, flags);

 sx_wait_CCR(bp);
 spin_lock_irqsave(&bp->lock, flags);
 sx_out(bp, CD186x_CCR, CCR_SOFTRESET);

 port->IER = 0;
 sx_out(bp, CD186x_IER, port->IER);
 spin_unlock_irqrestore(&bp->lock, flags);
 if (tty)
  set_bit(TTY_IO_ERROR, &tty->flags);
 port->port.flags &= ~ASYNC_INITIALIZED;

 if (!bp->count)
  sx_shutdown_board(bp);
 func_exit();
}
