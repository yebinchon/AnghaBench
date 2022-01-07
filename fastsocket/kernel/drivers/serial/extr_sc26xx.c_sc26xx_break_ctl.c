
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int CR ;
 int CR_STOP_BRK ;
 int CR_STRT_BRK ;
 int WRITE_SC_PORT (struct uart_port*,int ,int ) ;

__attribute__((used)) static void sc26xx_break_ctl(struct uart_port *port, int break_state)
{
 if (break_state == -1)
  WRITE_SC_PORT(port, CR, CR_STRT_BRK);
 else
  WRITE_SC_PORT(port, CR, CR_STOP_BRK);
}
