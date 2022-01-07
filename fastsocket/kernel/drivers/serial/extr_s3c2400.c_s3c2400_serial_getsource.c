
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int divisor; char* name; } ;



__attribute__((used)) static int s3c2400_serial_getsource(struct uart_port *port,
        struct s3c24xx_uart_clksrc *clk)
{
 clk->divisor = 1;
 clk->name = "pclk";

 return 0;
}
