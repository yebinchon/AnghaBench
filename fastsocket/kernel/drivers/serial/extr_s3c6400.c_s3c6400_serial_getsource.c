
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int divisor; char* name; } ;


 int S3C2410_UCON ;
 int S3C6400_UCON_CLKMASK ;




 int rd_regl (struct uart_port*,int ) ;

__attribute__((used)) static int s3c6400_serial_getsource(struct uart_port *port,
        struct s3c24xx_uart_clksrc *clk)
{
 u32 ucon = rd_regl(port, S3C2410_UCON);

 clk->divisor = 1;

 switch (ucon & S3C6400_UCON_CLKMASK) {
 case 129:
  clk->name = "uclk0";
  break;

 case 128:
  clk->name = "uclk1";
  break;

 case 131:
 case 130:
  clk->name = "pclk";
  break;
 }

 return 0;
}
