
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int DECT_POWER_ON ;
 int RS232_ON ;
 int Ser1UTCR0 ;
 int clear_cs3_bit (int ) ;
 int set_cs3_bit (int ) ;

__attribute__((used)) static void simpad_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
{
 if (port->mapbase == (u_int)&Ser1UTCR0) {
  if (state)
  {
   clear_cs3_bit(RS232_ON);
   clear_cs3_bit(DECT_POWER_ON);
  }else
  {
   set_cs3_bit(RS232_ON);
   set_cs3_bit(DECT_POWER_ON);
  }
 }
}
