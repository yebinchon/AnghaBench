
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int IRQF_DISABLED ;
 int IRQF_NOAUTOEN ;
 int IRQF_VALID ;
 int KS8695_IRQ_UART_LINE_STATUS ;
 int KS8695_IRQ_UART_MODEM_STATUS ;
 int KS8695_IRQ_UART_RX ;
 int KS8695_IRQ_UART_TX ;
 int free_irq (int ,struct uart_port*) ;
 int ks8695uart_modem_status ;
 int ks8695uart_rx_chars ;
 int ks8695uart_tx_chars ;
 int ms_enable (struct uart_port*,int) ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;
 int rx_enable (struct uart_port*,int) ;
 int set_irq_flags (int ,int) ;
 int tx_enable (struct uart_port*,int ) ;

__attribute__((used)) static int ks8695uart_startup(struct uart_port *port)
{
 int retval;

 set_irq_flags(KS8695_IRQ_UART_TX, IRQF_VALID | IRQF_NOAUTOEN);
 tx_enable(port, 0);
 rx_enable(port, 1);
 ms_enable(port, 1);




 retval = request_irq(KS8695_IRQ_UART_TX, ks8695uart_tx_chars, IRQF_DISABLED, "UART TX", port);
 if (retval)
  goto err_tx;

 retval = request_irq(KS8695_IRQ_UART_RX, ks8695uart_rx_chars, IRQF_DISABLED, "UART RX", port);
 if (retval)
  goto err_rx;

 retval = request_irq(KS8695_IRQ_UART_LINE_STATUS, ks8695uart_rx_chars, IRQF_DISABLED, "UART LineStatus", port);
 if (retval)
  goto err_ls;

 retval = request_irq(KS8695_IRQ_UART_MODEM_STATUS, ks8695uart_modem_status, IRQF_DISABLED, "UART ModemStatus", port);
 if (retval)
  goto err_ms;

 return 0;

err_ms:
 free_irq(KS8695_IRQ_UART_LINE_STATUS, port);
err_ls:
 free_irq(KS8695_IRQ_UART_RX, port);
err_rx:
 free_irq(KS8695_IRQ_UART_TX, port);
err_tx:
 return retval;
}
