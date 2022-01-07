
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int divisor; char* name; } ;


 int S3C2410_UCON ;
 unsigned long S3C2410_UCON_UCLK ;
 unsigned long rd_regl (struct uart_port*,int ) ;

__attribute__((used)) static int s3c2410_serial_getsource(struct uart_port *port,
        struct s3c24xx_uart_clksrc *clk)
{
 unsigned long ucon = rd_regl(port, S3C2410_UCON);

 clk->divisor = 1;
 clk->name = (ucon & S3C2410_UCON_UCLK) ? "uclk" : "pclk";

 return 0;
}
