
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int ISR_LOOP_LIMIT ;
 unsigned int ModemInt ;
 unsigned int RxInt ;
 unsigned int RxTimeoutInt ;
 unsigned int TxInt ;
 int UART_R_ISR ;
 unsigned int UR (struct uart_port*,int ) ;
 int lh7a40xuart_modem_status (struct uart_port*) ;
 int lh7a40xuart_rx_chars (struct uart_port*) ;
 int lh7a40xuart_tx_chars (struct uart_port*) ;

__attribute__((used)) static irqreturn_t lh7a40xuart_int (int irq, void* dev_id)
{
 struct uart_port* port = dev_id;
 unsigned int cLoopLimit = ISR_LOOP_LIMIT;
 unsigned int isr = UR (port, UART_R_ISR);


 do {
  if (isr & (RxInt | RxTimeoutInt))
   lh7a40xuart_rx_chars(port);
  if (isr & ModemInt)
   lh7a40xuart_modem_status (port);
  if (isr & TxInt)
   lh7a40xuart_tx_chars (port);

  if (--cLoopLimit == 0)
   break;

  isr = UR (port, UART_R_ISR);
 } while (isr & (RxInt | TxInt | RxTimeoutInt));

 return IRQ_HANDLED;
}
