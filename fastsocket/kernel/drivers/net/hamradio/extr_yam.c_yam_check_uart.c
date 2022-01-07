
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uart { ____Placeholder_uart } uart ;


 int FCR (unsigned int) ;
 int IIR (unsigned int) ;
 int MCR (unsigned int) ;
 int MSR (unsigned int) ;
 int RBR (unsigned int) ;
 int SCR (unsigned int) ;
 int c_uart_16450 ;
 int c_uart_16550 ;
 int c_uart_16550A ;
 int c_uart_8250 ;
 int c_uart_unknown ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static enum uart yam_check_uart(unsigned int iobase)
{
 unsigned char b1, b2, b3;
 enum uart u;
 enum uart uart_tab[] =
 {c_uart_16450, c_uart_unknown, c_uart_16550, c_uart_16550A};

 b1 = inb(MCR(iobase));
 outb(b1 | 0x10, MCR(iobase));
 b2 = inb(MSR(iobase));
 outb(0x1a, MCR(iobase));
 b3 = inb(MSR(iobase)) & 0xf0;
 outb(b1, MCR(iobase));
 outb(b2, MSR(iobase));
 if (b3 != 0x90)
  return c_uart_unknown;
 inb(RBR(iobase));
 inb(RBR(iobase));
 outb(0x01, FCR(iobase));
 u = uart_tab[(inb(IIR(iobase)) >> 6) & 3];
 if (u == c_uart_16450) {
  outb(0x5a, SCR(iobase));
  b1 = inb(SCR(iobase));
  outb(0xa5, SCR(iobase));
  b2 = inb(SCR(iobase));
  if ((b1 != 0x5a) || (b2 != 0xa5))
   u = c_uart_8250;
 }
 return u;
}
