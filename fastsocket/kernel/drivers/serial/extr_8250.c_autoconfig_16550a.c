
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; int type; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; } ;


 int DEBUG_AUTOCONF (char*,...) ;
 int PORT_16550A ;
 int PORT_16650 ;
 int PORT_16750 ;
 int PORT_NS16550A ;
 int PORT_XSCALE ;
 int UART_CAP_AFE ;
 int UART_CAP_EFR ;
 int UART_CAP_FIFO ;
 int UART_CAP_SLEEP ;
 int UART_CAP_UUE ;
 int UART_EFR ;
 int UART_FCR ;
 unsigned int UART_FCR7_64BYTE ;
 unsigned int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 unsigned int UART_IER_UUE ;
 int UART_IIR ;
 int UART_LCR ;
 unsigned int UART_LCR_DLAB ;
 int UART_MCR ;
 unsigned char UART_MCR_LOOP ;
 int UART_NATSEMI ;
 int autoconfig_has_efr (struct uart_8250_port*) ;
 int broken_efr (struct uart_8250_port*) ;
 unsigned short serial_dl_read (struct uart_8250_port*) ;
 int serial_dl_write (struct uart_8250_port*,unsigned short) ;
 unsigned int serial_in (struct uart_8250_port*,int) ;
 int serial_outp (struct uart_8250_port*,int,unsigned int) ;

__attribute__((used)) static void autoconfig_16550a(struct uart_8250_port *up)
{
 unsigned char status1, status2;
 unsigned int iersave;

 up->port.type = PORT_16550A;
 up->capabilities |= UART_CAP_FIFO;





 serial_outp(up, UART_LCR, UART_LCR_DLAB);
 if (serial_in(up, UART_EFR) == 0) {
  serial_outp(up, UART_EFR, 0xA8);
  if (serial_in(up, UART_EFR) != 0) {
   DEBUG_AUTOCONF("EFRv1 ");
   up->port.type = PORT_16650;
   up->capabilities |= UART_CAP_EFR | UART_CAP_SLEEP;
  } else {
   DEBUG_AUTOCONF("Motorola 8xxx DUART ");
  }
  serial_outp(up, UART_EFR, 0);
  return;
 }





 serial_outp(up, UART_LCR, 0xBF);
 if (serial_in(up, UART_EFR) == 0 && !broken_efr(up)) {
  DEBUG_AUTOCONF("EFRv2 ");
  autoconfig_has_efr(up);
  return;
 }
 serial_outp(up, UART_LCR, 0);
 status1 = serial_in(up, UART_MCR);
 serial_outp(up, UART_LCR, 0xE0);
 status2 = serial_in(up, 0x02);

 if (!((status2 ^ status1) & UART_MCR_LOOP)) {
  serial_outp(up, UART_LCR, 0);
  serial_outp(up, UART_MCR, status1 ^ UART_MCR_LOOP);
  serial_outp(up, UART_LCR, 0xE0);
  status2 = serial_in(up, 0x02);
  serial_outp(up, UART_LCR, 0);
  serial_outp(up, UART_MCR, status1);

  if ((status2 ^ status1) & UART_MCR_LOOP) {
   unsigned short quot;

   serial_outp(up, UART_LCR, 0xE0);

   quot = serial_dl_read(up);
   quot <<= 3;

   status1 = serial_in(up, 0x04);
   status1 &= ~0xB0;
   status1 |= 0x10;
   serial_outp(up, 0x04, status1);

   serial_dl_write(up, quot);

   serial_outp(up, UART_LCR, 0);

   up->port.uartclk = 921600*16;
   up->port.type = PORT_NS16550A;
   up->capabilities |= UART_NATSEMI;
   return;
  }
 }







 serial_outp(up, UART_LCR, 0);
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
 status1 = serial_in(up, UART_IIR) >> 5;
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 serial_outp(up, UART_LCR, UART_LCR_DLAB);
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
 status2 = serial_in(up, UART_IIR) >> 5;
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 serial_outp(up, UART_LCR, 0);

 DEBUG_AUTOCONF("iir1=%d iir2=%d ", status1, status2);

 if (status1 == 6 && status2 == 7) {
  up->port.type = PORT_16750;
  up->capabilities |= UART_CAP_AFE | UART_CAP_SLEEP;
  return;
 }
 iersave = serial_in(up, UART_IER);
 serial_outp(up, UART_IER, iersave & ~UART_IER_UUE);
 if (!(serial_in(up, UART_IER) & UART_IER_UUE)) {




  serial_outp(up, UART_IER, iersave | UART_IER_UUE);
  if (serial_in(up, UART_IER) & UART_IER_UUE) {




   DEBUG_AUTOCONF("Xscale ");
   up->port.type = PORT_XSCALE;
   up->capabilities |= UART_CAP_UUE;
   return;
  }
 } else {




  DEBUG_AUTOCONF("Couldn't force IER_UUE to 0 ");
 }
 serial_outp(up, UART_IER, iersave);
}
