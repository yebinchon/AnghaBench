
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 unsigned int TIOCSER_TEMT ;
 unsigned char Tx_BUF_EMP ;
 unsigned char ip22zilog_read_channel_status (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int ip22zilog_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 unsigned char status;
 unsigned int ret;

 spin_lock_irqsave(&port->lock, flags);

 status = ip22zilog_read_channel_status(port);

 spin_unlock_irqrestore(&port->lock, flags);

 if (status & Tx_BUF_EMP)
  ret = TIOCSER_TEMT;
 else
  ret = 0;

 return ret;
}
