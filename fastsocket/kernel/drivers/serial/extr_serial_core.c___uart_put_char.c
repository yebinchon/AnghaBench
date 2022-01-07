
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct circ_buf {unsigned char* buf; size_t head; } ;


 int UART_XMIT_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_free (struct circ_buf*) ;

__attribute__((used)) static inline int
__uart_put_char(struct uart_port *port, struct circ_buf *circ, unsigned char c)
{
 unsigned long flags;
 int ret = 0;

 if (!circ->buf)
  return 0;

 spin_lock_irqsave(&port->lock, flags);
 if (uart_circ_chars_free(circ) != 0) {
  circ->buf[circ->head] = c;
  circ->head = (circ->head + 1) & (UART_XMIT_SIZE - 1);
  ret = 1;
 }
 spin_unlock_irqrestore(&port->lock, flags);
 return ret;
}
