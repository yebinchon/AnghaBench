
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {int dummy; } ;


 int SDCR0_UART ;
 int Ser1SDCR0 ;

__attribute__((used)) static void
badge4_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
{
 if (!state) {
  Ser1SDCR0 |= SDCR0_UART;
 }
}
