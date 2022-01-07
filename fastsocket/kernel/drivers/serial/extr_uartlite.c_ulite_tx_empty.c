
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 unsigned int TIOCSER_TEMT ;
 scalar_t__ ULITE_STATUS ;
 unsigned int ULITE_STATUS_TXEMPTY ;
 unsigned int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int ulite_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&port->lock, flags);
 ret = readb(port->membase + ULITE_STATUS);
 spin_unlock_irqrestore(&port->lock, flags);

 return ret & ULITE_STATUS_TXEMPTY ? TIOCSER_TEMT : 0;
}
