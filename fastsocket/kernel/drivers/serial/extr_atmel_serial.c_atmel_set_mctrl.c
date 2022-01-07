
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 scalar_t__ AT91RM9200_BASE_US0 ;
 int AT91_PIN_PA21 ;
 unsigned int ATMEL_US_CHMODE ;
 unsigned int ATMEL_US_CHMODE_LOC_LOOP ;
 unsigned int ATMEL_US_CHMODE_NORMAL ;
 unsigned int ATMEL_US_DTRDIS ;
 unsigned int ATMEL_US_DTREN ;
 unsigned int ATMEL_US_RTSDIS ;
 unsigned int ATMEL_US_RTSEN ;
 int TIOCM_DTR ;
 int TIOCM_LOOP ;
 int TIOCM_RTS ;
 unsigned int UART_GET_MR (struct uart_port*) ;
 int UART_PUT_CR (struct uart_port*,unsigned int) ;
 int UART_PUT_MR (struct uart_port*,unsigned int) ;
 int at91_set_gpio_value (int ,int) ;
 scalar_t__ cpu_is_at91rm9200 () ;

__attribute__((used)) static void atmel_set_mctrl(struct uart_port *port, u_int mctrl)
{
 unsigned int control = 0;
 unsigned int mode;
 if (mctrl & TIOCM_RTS)
  control |= ATMEL_US_RTSEN;
 else
  control |= ATMEL_US_RTSDIS;

 if (mctrl & TIOCM_DTR)
  control |= ATMEL_US_DTREN;
 else
  control |= ATMEL_US_DTRDIS;

 UART_PUT_CR(port, control);


 mode = UART_GET_MR(port) & ~ATMEL_US_CHMODE;
 if (mctrl & TIOCM_LOOP)
  mode |= ATMEL_US_CHMODE_LOC_LOOP;
 else
  mode |= ATMEL_US_CHMODE_NORMAL;
 UART_PUT_MR(port, mode);
}
