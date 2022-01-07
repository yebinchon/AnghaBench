
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 unsigned int UART_CTL_LOOPBACK_MASK ;
 int UART_CTL_REG ;
 unsigned int UART_MCTL_DTR_MASK ;
 int UART_MCTL_REG ;
 unsigned int UART_MCTL_RTS_MASK ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int bcm_uart_writel (struct uart_port*,unsigned int,int ) ;

__attribute__((used)) static void bcm_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned int val;

 val = bcm_uart_readl(port, UART_MCTL_REG);
 val &= ~(UART_MCTL_DTR_MASK | UART_MCTL_RTS_MASK);

 if (!(mctrl & TIOCM_DTR))
  val |= UART_MCTL_DTR_MASK;
 if (!(mctrl & TIOCM_RTS))
  val |= UART_MCTL_RTS_MASK;
 bcm_uart_writel(port, val, UART_MCTL_REG);

 val = bcm_uart_readl(port, UART_CTL_REG);
 if (mctrl & TIOCM_LOOP)
  val |= UART_CTL_LOOPBACK_MASK;
 else
  val &= ~UART_CTL_LOOPBACK_MASK;
 bcm_uart_writel(port, val, UART_CTL_REG);
}
