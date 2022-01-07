
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct specialix_port* driver_data; } ;
struct specialix_port {int break_length; int lock; int IER; int COR2; } ;
struct specialix_board {int lock; } ;


 int CCR_CORCHG2 ;
 int CD186x_CAR ;
 int CD186x_CCR ;
 int CD186x_COR2 ;
 int CD186x_IER ;
 int COR2_ETC ;
 int EOPNOTSUPP ;
 int HZ ;
 int IER_TXRDY ;
 int SPECIALIX_TPS ;
 int func_enter () ;
 int func_exit () ;
 struct specialix_board* port_Board (struct specialix_port*) ;
 int port_No (struct specialix_port*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_out (struct specialix_board*,int ,int ) ;
 int sx_wait_CCR (struct specialix_board*) ;

__attribute__((used)) static int sx_send_break(struct tty_struct *tty, int length)
{
 struct specialix_port *port = tty->driver_data;
 struct specialix_board *bp = port_Board(port);
 unsigned long flags;

 func_enter();
 if (length == 0 || length == -1)
  return -EOPNOTSUPP;

 spin_lock_irqsave(&port->lock, flags);
 port->break_length = SPECIALIX_TPS / HZ * length;
 port->COR2 |= COR2_ETC;
 port->IER |= IER_TXRDY;
 spin_lock(&bp->lock);
 sx_out(bp, CD186x_CAR, port_No(port));
 sx_out(bp, CD186x_COR2, port->COR2);
 sx_out(bp, CD186x_IER, port->IER);
 spin_unlock(&bp->lock);
 spin_unlock_irqrestore(&port->lock, flags);
 sx_wait_CCR(bp);
 spin_lock_irqsave(&bp->lock, flags);
 sx_out(bp, CD186x_CCR, CCR_CORCHG2);
 spin_unlock_irqrestore(&bp->lock, flags);
 sx_wait_CCR(bp);

 func_exit();
 return 0;
}
