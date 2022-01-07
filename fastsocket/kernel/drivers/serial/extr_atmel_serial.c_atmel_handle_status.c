
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {unsigned int irq_status; int tasklet; } ;


 unsigned int ATMEL_US_CTSIC ;
 unsigned int ATMEL_US_DCDIC ;
 unsigned int ATMEL_US_DSRIC ;
 unsigned int ATMEL_US_RIIC ;
 int tasklet_schedule (int *) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void
atmel_handle_status(struct uart_port *port, unsigned int pending,
      unsigned int status)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (pending & (ATMEL_US_RIIC | ATMEL_US_DSRIC | ATMEL_US_DCDIC
    | ATMEL_US_CTSIC)) {
  atmel_port->irq_status = status;
  tasklet_schedule(&atmel_port->tasklet);
 }
}
