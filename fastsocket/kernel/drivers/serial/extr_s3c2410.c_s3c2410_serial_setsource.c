
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int name; } ;


 int S3C2410_UCON ;
 unsigned long S3C2410_UCON_UCLK ;
 unsigned long rd_regl (struct uart_port*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int wr_regl (struct uart_port*,int ,unsigned long) ;

__attribute__((used)) static int s3c2410_serial_setsource(struct uart_port *port,
        struct s3c24xx_uart_clksrc *clk)
{
 unsigned long ucon = rd_regl(port, S3C2410_UCON);

 if (strcmp(clk->name, "uclk") == 0)
  ucon |= S3C2410_UCON_UCLK;
 else
  ucon &= ~S3C2410_UCON_UCLK;

 wr_regl(port, S3C2410_UCON, ucon);
 return 0;
}
