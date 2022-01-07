
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int divisor; char* name; } ;


 int S3C2410_UCON ;
 unsigned long S3C2412_UCON_CLKMASK ;




 unsigned long rd_regl (struct uart_port*,int ) ;

__attribute__((used)) static int s3c2412_serial_getsource(struct uart_port *port,
        struct s3c24xx_uart_clksrc *clk)
{
 unsigned long ucon = rd_regl(port, S3C2410_UCON);

 switch (ucon & S3C2412_UCON_CLKMASK) {
 case 129:
  clk->divisor = 1;
  clk->name = "uclk";
  break;

 case 131:
 case 130:
  clk->divisor = 1;
  clk->name = "pclk";
  break;

 case 128:
  clk->divisor = 1;
  clk->name = "usysclk";
  break;
 }

 return 0;
}
