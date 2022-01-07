
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct sbd_port {struct uart_port port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int M_DUART_ISR_ALL ;
 unsigned int M_DUART_ISR_IN ;
 unsigned int M_DUART_ISR_RX ;
 unsigned int M_DUART_ISR_TX ;
 int R_DUART_IMRREG (int) ;
 int R_DUART_ISRREG (int) ;
 unsigned int read_sbdshr (struct sbd_port*,int ) ;
 int sbd_receive_chars (struct sbd_port*) ;
 int sbd_status_handle (struct sbd_port*) ;
 int sbd_transmit_chars (struct sbd_port*) ;

__attribute__((used)) static irqreturn_t sbd_interrupt(int irq, void *dev_id)
{
 struct sbd_port *sport = dev_id;
 struct uart_port *uport = &sport->port;
 irqreturn_t status = IRQ_NONE;
 unsigned int intstat;
 int count;

 for (count = 16; count; count--) {
  intstat = read_sbdshr(sport,
          R_DUART_ISRREG((uport->line) % 2));
  intstat &= read_sbdshr(sport,
           R_DUART_IMRREG((uport->line) % 2));
  intstat &= M_DUART_ISR_ALL;
  if (!intstat)
   break;

  if (intstat & M_DUART_ISR_RX)
   sbd_receive_chars(sport);
  if (intstat & M_DUART_ISR_IN)
   sbd_status_handle(sport);
  if (intstat & M_DUART_ISR_TX)
   sbd_transmit_chars(sport);

  status = IRQ_HANDLED;
 }

 return status;
}
