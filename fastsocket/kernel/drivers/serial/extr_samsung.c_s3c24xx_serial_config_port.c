
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;
struct s3c24xx_uart_info {int type; } ;


 int UART_CONFIG_TYPE ;
 struct s3c24xx_uart_info* s3c24xx_port_to_info (struct uart_port*) ;
 scalar_t__ s3c24xx_serial_request_port (struct uart_port*) ;

__attribute__((used)) static void s3c24xx_serial_config_port(struct uart_port *port, int flags)
{
 struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);

 if (flags & UART_CONFIG_TYPE &&
     s3c24xx_serial_request_port(port) == 0)
  port->type = info->type;
}
