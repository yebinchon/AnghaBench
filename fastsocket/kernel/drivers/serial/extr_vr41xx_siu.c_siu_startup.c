
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; int lock; int mctrl; int irq; int * membase; } ;


 int DSIUINT_ALL ;
 int ENODEV ;
 scalar_t__ PORT_VR41XX_DSIU ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_MSR ;
 int UART_RX ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int siu_clear_fifo (struct uart_port*) ;
 int siu_interrupt ;
 int siu_read (struct uart_port*,int ) ;
 int siu_set_mctrl (struct uart_port*,int ) ;
 int siu_type_name (struct uart_port*) ;
 int siu_write (struct uart_port*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vr41xx_enable_dsiuint (int ) ;

__attribute__((used)) static int siu_startup(struct uart_port *port)
{
 int retval;

 if (port->membase == ((void*)0))
  return -ENODEV;

 siu_clear_fifo(port);

 (void)siu_read(port, UART_LSR);
 (void)siu_read(port, UART_RX);
 (void)siu_read(port, UART_IIR);
 (void)siu_read(port, UART_MSR);

 if (siu_read(port, UART_LSR) == 0xff)
  return -ENODEV;

 retval = request_irq(port->irq, siu_interrupt, 0, siu_type_name(port), port);
 if (retval)
  return retval;

 if (port->type == PORT_VR41XX_DSIU)
  vr41xx_enable_dsiuint(DSIUINT_ALL);

 siu_write(port, UART_LCR, UART_LCR_WLEN8);

 spin_lock_irq(&port->lock);
 siu_set_mctrl(port, port->mctrl);
 spin_unlock_irq(&port->lock);

 siu_write(port, UART_IER, UART_IER_RLSI | UART_IER_RDI);

 (void)siu_read(port, UART_LSR);
 (void)siu_read(port, UART_RX);
 (void)siu_read(port, UART_IIR);
 (void)siu_read(port, UART_MSR);

 return 0;
}
