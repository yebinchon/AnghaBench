
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int iobase; int irq; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int UART_IER ;
 int UART_IIR ;
 int UART_LSR ;
 int UART_MCR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_OUT1 ;
 unsigned char UART_MCR_OUT2 ;
 unsigned char UART_MCR_RTS ;
 int UART_MSR ;
 int UART_RX ;
 int UART_TX ;
 int UPF_FOURPORT ;
 unsigned char inb_p (unsigned int) ;
 int outb_p (unsigned char,unsigned int) ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;
 unsigned char serial_inp (struct uart_8250_port*,int ) ;
 int serial_outp (struct uart_8250_port*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void autoconfig_irq(struct uart_8250_port *up)
{
 unsigned char save_mcr, save_ier;
 unsigned char save_ICP = 0;
 unsigned int ICP = 0;
 unsigned long irqs;
 int irq;

 if (up->port.flags & UPF_FOURPORT) {
  ICP = (up->port.iobase & 0xfe0) | 0x1f;
  save_ICP = inb_p(ICP);
  outb_p(0x80, ICP);
  (void) inb_p(ICP);
 }


 probe_irq_off(probe_irq_on());
 save_mcr = serial_inp(up, UART_MCR);
 save_ier = serial_inp(up, UART_IER);
 serial_outp(up, UART_MCR, UART_MCR_OUT1 | UART_MCR_OUT2);

 irqs = probe_irq_on();
 serial_outp(up, UART_MCR, 0);
 udelay(10);
 if (up->port.flags & UPF_FOURPORT) {
  serial_outp(up, UART_MCR,
       UART_MCR_DTR | UART_MCR_RTS);
 } else {
  serial_outp(up, UART_MCR,
       UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2);
 }
 serial_outp(up, UART_IER, 0x0f);
 (void)serial_inp(up, UART_LSR);
 (void)serial_inp(up, UART_RX);
 (void)serial_inp(up, UART_IIR);
 (void)serial_inp(up, UART_MSR);
 serial_outp(up, UART_TX, 0xFF);
 udelay(20);
 irq = probe_irq_off(irqs);

 serial_outp(up, UART_MCR, save_mcr);
 serial_outp(up, UART_IER, save_ier);

 if (up->port.flags & UPF_FOURPORT)
  outb_p(save_ICP, ICP);

 up->port.irq = (irq > 0) ? irq : 0;
}
