
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_FCR ;
 unsigned char UART_FCR_CLEAR_RCVR ;
 unsigned char UART_FCR_CLEAR_XMIT ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 int UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 int UART_LSR ;
 unsigned char UART_LSR_DR ;
 int UART_MCR ;
 unsigned char UART_MCR_LOOP ;
 int UART_RX ;
 int UART_TX ;
 int mdelay (int) ;
 unsigned short serial_dl_read (struct uart_8250_port*) ;
 int serial_dl_write (struct uart_8250_port*,unsigned short) ;
 unsigned char serial_inp (struct uart_8250_port*,int ) ;
 int serial_outp (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static int size_fifo(struct uart_8250_port *up)
{
 unsigned char old_fcr, old_mcr, old_lcr;
 unsigned short old_dl;
 int count;

 old_lcr = serial_inp(up, UART_LCR);
 serial_outp(up, UART_LCR, 0);
 old_fcr = serial_inp(up, UART_FCR);
 old_mcr = serial_inp(up, UART_MCR);
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO |
      UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
 serial_outp(up, UART_MCR, UART_MCR_LOOP);
 serial_outp(up, UART_LCR, UART_LCR_DLAB);
 old_dl = serial_dl_read(up);
 serial_dl_write(up, 0x0001);
 serial_outp(up, UART_LCR, 0x03);
 for (count = 0; count < 256; count++)
  serial_outp(up, UART_TX, count);
 mdelay(20);
 for (count = 0; (serial_inp(up, UART_LSR) & UART_LSR_DR) &&
      (count < 256); count++)
  serial_inp(up, UART_RX);
 serial_outp(up, UART_FCR, old_fcr);
 serial_outp(up, UART_MCR, old_mcr);
 serial_outp(up, UART_LCR, UART_LCR_DLAB);
 serial_dl_write(up, old_dl);
 serial_outp(up, UART_LCR, old_lcr);

 return count;
}
