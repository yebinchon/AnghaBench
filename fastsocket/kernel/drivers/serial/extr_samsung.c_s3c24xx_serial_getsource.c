
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_info {int (* get_clksrc ) (struct uart_port*,struct s3c24xx_uart_clksrc*) ;} ;
struct s3c24xx_uart_clksrc {int dummy; } ;


 struct s3c24xx_uart_info* s3c24xx_port_to_info (struct uart_port*) ;
 int stub1 (struct uart_port*,struct s3c24xx_uart_clksrc*) ;

__attribute__((used)) static inline int
s3c24xx_serial_getsource(struct uart_port *port, struct s3c24xx_uart_clksrc *c)
{
 struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);

 return (info->get_clksrc)(port, c);
}
