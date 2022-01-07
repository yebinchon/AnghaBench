
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ioc4_port {int ip_sscr; int ip_tx_lowat; TYPE_2__* ip_serial_regs; TYPE_1__* ip_uart_regs; int ip_flags; } ;
struct TYPE_4__ {int sscr; } ;
struct TYPE_3__ {int i4u_lcr; int i4u_fcr; } ;


 int IOC4_SSCR_DMA_EN ;
 int IOC4_SSCR_DMA_PAUSE ;
 int IOC4_SSCR_PAUSE_STATE ;
 int IOC4_SSCR_RX_THRESHOLD ;
 int MAXITER ;
 int PORT_ACTIVE ;
 int PORT_INACTIVE ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_LCR_WLEN8 ;
 int readl (int *) ;
 int writeb (int,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static inline int local_open(struct ioc4_port *port)
{
 int spiniter = 0;

 port->ip_flags = PORT_ACTIVE;


 if (port->ip_sscr & IOC4_SSCR_DMA_EN) {
  writel(port->ip_sscr | IOC4_SSCR_DMA_PAUSE,
   &port->ip_serial_regs->sscr);
  while((readl(&port->ip_serial_regs-> sscr)
    & IOC4_SSCR_PAUSE_STATE) == 0) {
   spiniter++;
   if (spiniter > MAXITER) {
    port->ip_flags = PORT_INACTIVE;
    return -1;
   }
  }
 }






 writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR,
    &port->ip_uart_regs->i4u_fcr);

 writeb(UART_LCR_WLEN8, &port->ip_uart_regs->i4u_lcr);





 port->ip_sscr &= ~IOC4_SSCR_RX_THRESHOLD;
 port->ip_sscr |= 1;




 writel(port->ip_sscr, &port->ip_serial_regs->sscr);
 port->ip_tx_lowat = 1;
 return 0;
}
