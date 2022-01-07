
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct circ_buf {int head; scalar_t__ buf; int tail; } ;
struct sdio_uart_port {int ier; int func; int write_lock; struct circ_buf xmit; } ;


 int CIRC_SPACE_TO_END (int,int ,int) ;
 int ENODEV ;
 int UART_IER_THRI ;
 int UART_XMIT_SIZE ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_irq (int ) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_start_tx (struct sdio_uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sdio_uart_write(struct tty_struct * tty, const unsigned char *buf,
      int count)
{
 struct sdio_uart_port *port = tty->driver_data;
 struct circ_buf *circ = &port->xmit;
 int c, ret = 0;

 if (!port->func)
  return -ENODEV;

 spin_lock(&port->write_lock);
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
 spin_unlock(&port->write_lock);

 if ( !(port->ier & UART_IER_THRI)) {
  int err = sdio_uart_claim_func(port);
  if (!err) {
   sdio_uart_start_tx(port);
   sdio_uart_irq(port->func);
   sdio_uart_release_func(port);
  } else
   ret = err;
 }

 return ret;
}
