
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t type; int flags; int iobase; int lock; int mctrl; int irq; int line; } ;
struct uart_sunsu_port {size_t su_type; int ier; TYPE_2__ port; scalar_t__ acr; } ;
struct uart_port {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int ENODEV ;
 int IRQF_SHARED ;
 size_t PORT_16C950 ;
 size_t SU_PORT_PORT ;
 int TIOCM_OUT2 ;
 int UART_CLEAR_FIFO ;
 int UART_CSR ;
 int UART_EFR ;
 int UART_EFR_ECB ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_MSR ;
 int UART_RX ;
 int UPF_BUGGY_UART ;
 int UPF_FOURPORT ;
 int enable_rsa (struct uart_sunsu_port*) ;
 int inb_p (unsigned int) ;
 int outb_p (int,unsigned int) ;
 int printk (char*,int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_sunsu_port*) ;
 int serial_icr_write (struct uart_sunsu_port*,int ,int ) ;
 int serial_inp (struct uart_sunsu_port*,int ) ;
 int serial_outp (struct uart_sunsu_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * su_typev ;
 int sunsu_kbd_ms_interrupt ;
 int sunsu_serial_interrupt ;
 int sunsu_set_mctrl (TYPE_2__*,int ) ;
 TYPE_1__* uart_config ;

__attribute__((used)) static int sunsu_startup(struct uart_port *port)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
 unsigned long flags;
 int retval;

 if (up->port.type == PORT_16C950) {

  up->acr = 0;
  serial_outp(up, UART_LCR, 0xBF);
  serial_outp(up, UART_EFR, UART_EFR_ECB);
  serial_outp(up, UART_IER, 0);
  serial_outp(up, UART_LCR, 0);
  serial_icr_write(up, UART_CSR, 0);
  serial_outp(up, UART_LCR, 0xBF);
  serial_outp(up, UART_EFR, UART_EFR_ECB);
  serial_outp(up, UART_LCR, 0);
 }
 if (uart_config[up->port.type].flags & UART_CLEAR_FIFO) {
  serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
  serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO |
    UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
  serial_outp(up, UART_FCR, 0);
 }




 (void) serial_inp(up, UART_LSR);
 (void) serial_inp(up, UART_RX);
 (void) serial_inp(up, UART_IIR);
 (void) serial_inp(up, UART_MSR);






 if (!(up->port.flags & UPF_BUGGY_UART) &&
     (serial_inp(up, UART_LSR) == 0xff)) {
  printk("ttyS%d: LSR safety check engaged!\n", up->port.line);
  return -ENODEV;
 }

 if (up->su_type != SU_PORT_PORT) {
  retval = request_irq(up->port.irq, sunsu_kbd_ms_interrupt,
         IRQF_SHARED, su_typev[up->su_type], up);
 } else {
  retval = request_irq(up->port.irq, sunsu_serial_interrupt,
         IRQF_SHARED, su_typev[up->su_type], up);
 }
 if (retval) {
  printk("su: Cannot register IRQ %d\n", up->port.irq);
  return retval;
 }




 serial_outp(up, UART_LCR, UART_LCR_WLEN8);

 spin_lock_irqsave(&up->port.lock, flags);

 up->port.mctrl |= TIOCM_OUT2;

 sunsu_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);






 up->ier = UART_IER_RLSI | UART_IER_RDI;
 serial_outp(up, UART_IER, up->ier);

 if (up->port.flags & UPF_FOURPORT) {
  unsigned int icp;



  icp = (up->port.iobase & 0xfe0) | 0x01f;
  outb_p(0x80, icp);
  (void) inb_p(icp);
 }




 (void) serial_inp(up, UART_LSR);
 (void) serial_inp(up, UART_RX);
 (void) serial_inp(up, UART_IIR);
 (void) serial_inp(up, UART_MSR);

 return 0;
}
