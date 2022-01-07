
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int op0; int op1; } ;


 int MPC52xx_PSC_OP_RTS ;
 TYPE_1__* PSC (struct uart_port*) ;
 unsigned int TIOCM_RTS ;
 int out_8 (int *,int ) ;

__attribute__((used)) static void
mpc52xx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 if (mctrl & TIOCM_RTS)
  out_8(&PSC(port)->op1, MPC52xx_PSC_OP_RTS);
 else
  out_8(&PSC(port)->op0, MPC52xx_PSC_OP_RTS);
}
