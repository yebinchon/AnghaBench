
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct uart_cpm_port {int dummy; } ;


 int CPM_CR_RESTART_TX ;
 int CPM_CR_STOP_TX ;
 int cpm_line_cr_cmd (struct uart_cpm_port*,int ) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void cpm_uart_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;

 pr_debug("CPM uart[%d]:break ctrl, break_state: %d\n", port->line,
  break_state);

 if (break_state)
  cpm_line_cr_cmd(pinfo, CPM_CR_STOP_TX);
 else
  cpm_line_cr_cmd(pinfo, CPM_CR_RESTART_TX);
}
