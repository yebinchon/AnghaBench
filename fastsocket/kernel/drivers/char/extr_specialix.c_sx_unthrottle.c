
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct specialix_port* driver_data; } ;
struct specialix_port {int lock; int MSVR; } ;
struct specialix_board {int lock; } ;


 int CCR_SSCH1 ;
 int CD186x_CAR ;
 int CD186x_CCR ;
 int CD186x_MSVR ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int MSVR_DTR ;
 int func_enter () ;
 int func_exit () ;
 struct specialix_board* port_Board (struct specialix_port*) ;
 int port_No (struct specialix_port*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sx_crtscts (struct tty_struct*) ;
 int sx_out (struct specialix_board*,int ,int ) ;
 scalar_t__ sx_paranoia_check (struct specialix_port*,int ,char*) ;
 int sx_wait_CCR (struct specialix_board*) ;

__attribute__((used)) static void sx_unthrottle(struct tty_struct *tty)
{
 struct specialix_port *port = tty->driver_data;
 struct specialix_board *bp;
 unsigned long flags;

 func_enter();

 if (sx_paranoia_check(port, tty->name, "sx_unthrottle")) {
  func_exit();
  return;
 }

 bp = port_Board(port);

 spin_lock_irqsave(&port->lock, flags);

 if (sx_crtscts(tty))
  port->MSVR |= MSVR_DTR;

 spin_lock(&bp->lock);
 sx_out(bp, CD186x_CAR, port_No(port));
 spin_unlock(&bp->lock);
 if (I_IXOFF(tty)) {
  spin_unlock_irqrestore(&port->lock, flags);
  sx_wait_CCR(bp);
  spin_lock_irqsave(&bp->lock, flags);
  sx_out(bp, CD186x_CCR, CCR_SSCH1);
  spin_unlock_irqrestore(&bp->lock, flags);
  sx_wait_CCR(bp);
  spin_lock_irqsave(&port->lock, flags);
 }
 spin_lock(&bp->lock);
 sx_out(bp, CD186x_MSVR, port->MSVR);
 spin_unlock(&bp->lock);
 spin_unlock_irqrestore(&port->lock, flags);

 func_exit();
}
