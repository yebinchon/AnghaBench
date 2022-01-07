
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned int RTS_CR_RTS ;
 unsigned int TIOCM_RTS ;
 scalar_t__ UART_RTS_CR ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void netx_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned int val;


 if (mctrl & TIOCM_RTS) {
  val = readl(port->membase + UART_RTS_CR);
  writel(val | RTS_CR_RTS, port->membase + UART_RTS_CR);
 }
}
