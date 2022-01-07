
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avr_uart_configure () ;
 int avr_uart_send (char) ;
 int local_irq_disable () ;

__attribute__((used)) static void linkstation_power_off(void)
{
 local_irq_disable();


 avr_uart_configure();

 avr_uart_send('E');

 for(;;)
  avr_uart_send('G');

}
