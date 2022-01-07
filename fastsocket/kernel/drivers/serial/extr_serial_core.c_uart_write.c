
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {int head; scalar_t__ buf; int tail; } ;
struct uart_state {struct circ_buf xmit; struct uart_port* uart_port; } ;
struct uart_port {int lock; } ;
struct tty_struct {struct uart_state* driver_data; } ;


 int CIRC_SPACE_TO_END (int,int ,int) ;
 int EL3HLT ;
 int UART_XMIT_SIZE ;
 int WARN_ON (int) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_start (struct tty_struct*) ;

__attribute__((used)) static int
uart_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *port;
 struct circ_buf *circ;
 unsigned long flags;
 int c, ret = 0;





 if (!state) {
  WARN_ON(1);
  return -EL3HLT;
 }

 port = state->uart_port;
 circ = &state->xmit;

 if (!circ->buf)
  return 0;

 spin_lock_irqsave(&port->lock, flags);
 while (1) {
  c = CIRC_SPACE_TO_END(circ->head, circ->tail, UART_XMIT_SIZE);
  if (count < c)
   c = count;
  if (c <= 0)
   break;
  memcpy(circ->buf + circ->head, buf, c);
  circ->head = (circ->head + c) & (UART_XMIT_SIZE - 1);
  buf += c;
  count -= c;
  ret += c;
 }
 spin_unlock_irqrestore(&port->lock, flags);

 uart_start(tty);
 return ret;
}
