
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct s3c24xx_uart_info {int dummy; } ;
struct TYPE_2__ {struct s3c24xx_uart_info* info; } ;


 TYPE_1__* to_ourport (struct uart_port*) ;

__attribute__((used)) static inline struct s3c24xx_uart_info *s3c24xx_port_to_info(struct uart_port *port)
{
 return to_ourport(port)->info;
}
