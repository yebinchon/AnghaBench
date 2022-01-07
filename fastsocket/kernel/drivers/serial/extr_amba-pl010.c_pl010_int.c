
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 unsigned int AMBA_ISR_PASS_LIMIT ;
 int IRQ_RETVAL (int) ;
 scalar_t__ UART010_IIR ;
 unsigned int UART010_IIR_MIS ;
 unsigned int UART010_IIR_RIS ;
 unsigned int UART010_IIR_RTIS ;
 unsigned int UART010_IIR_TIS ;
 int pl010_modem_status (struct uart_amba_port*) ;
 int pl010_rx_chars (struct uart_amba_port*) ;
 int pl010_tx_chars (struct uart_amba_port*) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t pl010_int(int irq, void *dev_id)
{
 struct uart_amba_port *uap = dev_id;
 unsigned int status, pass_counter = AMBA_ISR_PASS_LIMIT;
 int handled = 0;

 spin_lock(&uap->port.lock);

 status = readb(uap->port.membase + UART010_IIR);
 if (status) {
  do {
   if (status & (UART010_IIR_RTIS | UART010_IIR_RIS))
    pl010_rx_chars(uap);
   if (status & UART010_IIR_MIS)
    pl010_modem_status(uap);
   if (status & UART010_IIR_TIS)
    pl010_tx_chars(uap);

   if (pass_counter-- == 0)
    break;

   status = readb(uap->port.membase + UART010_IIR);
  } while (status & (UART010_IIR_RTIS | UART010_IIR_RIS |
       UART010_IIR_TIS));
  handled = 1;
 }

 spin_unlock(&uap->port.lock);

 return IRQ_RETVAL(handled);
}
