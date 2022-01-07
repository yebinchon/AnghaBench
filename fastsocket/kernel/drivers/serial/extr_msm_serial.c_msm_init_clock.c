
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct msm_port {int clk; } ;


 int UART_DREG ;
 int UART_MNDREG ;
 int UART_MREG ;
 int UART_NREG ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_enable (int ) ;
 int msm_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void msm_init_clock(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);

 clk_enable(msm_port->clk);

 msm_write(port, 0xC0, UART_MREG);
 msm_write(port, 0xB2, UART_NREG);
 msm_write(port, 0x7D, UART_DREG);
 msm_write(port, 0x1C, UART_MNDREG);
}
