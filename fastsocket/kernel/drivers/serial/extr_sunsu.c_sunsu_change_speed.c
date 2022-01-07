
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t type; unsigned int uartclk; int read_status_mask; int ignore_status_mask; int lock; } ;
struct uart_sunsu_port {int rev; unsigned char lcr; unsigned int cflag; TYPE_2__ port; int ier; } ;
struct uart_port {int uartclk; } ;
struct TYPE_3__ {int flags; } ;


 unsigned int BRKINT ;
 unsigned int CMSPAR ;
 unsigned int CREAD ;
 unsigned int CRTSCTS ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IGNBRK ;
 unsigned int IGNPAR ;
 unsigned int INPCK ;
 unsigned int PARENB ;
 unsigned int PARMRK ;
 unsigned int PARODD ;
 size_t PORT_16750 ;
 size_t PORT_16C950 ;
 size_t PORT_RSA ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_EFR ;
 unsigned char UART_EFR_CTS ;
 scalar_t__ UART_ENABLE_MS (TYPE_2__*,unsigned int) ;
 int UART_FCR ;
 unsigned char UART_FCR7_64BYTE ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 unsigned char UART_FCR_TRIGGER_1 ;
 unsigned char UART_FCR_TRIGGER_14 ;
 unsigned char UART_FCR_TRIGGER_8 ;
 int UART_IER ;
 int UART_IER_MSI ;
 int UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_SPAR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 int UART_STARTECH ;
 int UART_USE_FIFO ;
 int serial_out (struct uart_sunsu_port*,int ,int ) ;
 int serial_outp (struct uart_sunsu_port*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* uart_config ;
 int uart_update_timeout (struct uart_port*,unsigned int,int) ;

__attribute__((used)) static void
sunsu_change_speed(struct uart_port *port, unsigned int cflag,
     unsigned int iflag, unsigned int quot)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
 unsigned char cval, fcr = 0;
 unsigned long flags;

 switch (cflag & CSIZE) {
 case 131:
  cval = 0x00;
  break;
 case 130:
  cval = 0x01;
  break;
 case 129:
  cval = 0x02;
  break;
 default:
 case 128:
  cval = 0x03;
  break;
 }

 if (cflag & CSTOPB)
  cval |= 0x04;
 if (cflag & PARENB)
  cval |= UART_LCR_PARITY;
 if (!(cflag & PARODD))
  cval |= UART_LCR_EPAR;
 if ((quot & 0xff) == 0 && up->port.type == PORT_16C950 &&
     up->rev == 0x5201)
  quot ++;

 if (uart_config[up->port.type].flags & UART_USE_FIFO) {
  if ((up->port.uartclk / quot) < (2400 * 16))
   fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_1;




  else
   fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_8;
 }
 if (up->port.type == PORT_16750)
  fcr |= UART_FCR7_64BYTE;





 spin_lock_irqsave(&up->port.lock, flags);




 uart_update_timeout(port, cflag, (port->uartclk / (16 * quot)));

 up->port.read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
 if (iflag & INPCK)
  up->port.read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (iflag & (BRKINT | PARMRK))
  up->port.read_status_mask |= UART_LSR_BI;




 up->port.ignore_status_mask = 0;
 if (iflag & IGNPAR)
  up->port.ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (iflag & IGNBRK) {
  up->port.ignore_status_mask |= UART_LSR_BI;




  if (iflag & IGNPAR)
   up->port.ignore_status_mask |= UART_LSR_OE;
 }




 if ((cflag & CREAD) == 0)
  up->port.ignore_status_mask |= UART_LSR_DR;




 up->ier &= ~UART_IER_MSI;
 if (UART_ENABLE_MS(&up->port, cflag))
  up->ier |= UART_IER_MSI;

 serial_out(up, UART_IER, up->ier);

 if (uart_config[up->port.type].flags & UART_STARTECH) {
  serial_outp(up, UART_LCR, 0xBF);
  serial_outp(up, UART_EFR, cflag & CRTSCTS ? UART_EFR_CTS :0);
 }
 serial_outp(up, UART_LCR, cval | UART_LCR_DLAB);
 serial_outp(up, UART_DLL, quot & 0xff);
 serial_outp(up, UART_DLM, quot >> 8);
 if (up->port.type == PORT_16750)
  serial_outp(up, UART_FCR, fcr);
 serial_outp(up, UART_LCR, cval);
 up->lcr = cval;
 if (up->port.type != PORT_16750) {
  if (fcr & UART_FCR_ENABLE_FIFO) {

   serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
  }
  serial_outp(up, UART_FCR, fcr);
 }

 up->cflag = cflag;

 spin_unlock_irqrestore(&up->port.lock, flags);
}
