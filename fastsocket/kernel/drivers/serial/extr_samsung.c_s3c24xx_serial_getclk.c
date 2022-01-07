
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {char* name; int divisor; } ;
struct s3c2410_uartcfg {int clocks_size; struct s3c24xx_uart_clksrc* clocks; } ;
struct clk {int dummy; } ;
struct baud_calc {unsigned int calc; unsigned int quot; struct clk* src; struct s3c24xx_uart_clksrc* clksrc; } ;


 int MAX_CLKS ;
 struct s3c2410_uartcfg* s3c24xx_port_to_cfg (struct uart_port*) ;
 scalar_t__ s3c24xx_serial_calcbaud (struct baud_calc*,struct uart_port*,struct s3c24xx_uart_clksrc*,unsigned int) ;
 int s3c24xx_serial_getsource (struct uart_port*,struct s3c24xx_uart_clksrc*) ;
 int s3c24xx_serial_setsource (struct uart_port*,struct s3c24xx_uart_clksrc*) ;
 scalar_t__ strcmp (char*,char*) ;
 struct s3c24xx_uart_clksrc tmp_clksrc ;

__attribute__((used)) static unsigned int s3c24xx_serial_getclk(struct uart_port *port,
       struct s3c24xx_uart_clksrc **clksrc,
       struct clk **clk,
       unsigned int baud)
{
 struct s3c2410_uartcfg *cfg = s3c24xx_port_to_cfg(port);
 struct s3c24xx_uart_clksrc *clkp;
 struct baud_calc res[MAX_CLKS];
 struct baud_calc *resptr, *best, *sptr;
 int i;

 clkp = cfg->clocks;
 best = ((void*)0);

 if (cfg->clocks_size < 2) {
  if (cfg->clocks_size == 0)
   clkp = &tmp_clksrc;





  if (strcmp(clkp->name, "fclk") == 0) {
   struct s3c24xx_uart_clksrc src;

   s3c24xx_serial_getsource(port, &src);





   if (strcmp(src.name, clkp->name) == 0) {
    s3c24xx_serial_setsource(port, clkp);
    s3c24xx_serial_getsource(port, &src);
   }

   clkp->divisor = src.divisor;
  }

  s3c24xx_serial_calcbaud(res, port, clkp, baud);
  best = res;
  resptr = best + 1;
 } else {
  resptr = res;

  for (i = 0; i < cfg->clocks_size; i++, clkp++) {
   if (s3c24xx_serial_calcbaud(resptr, port, clkp, baud))
    resptr++;
  }
 }



 if (!best) {
  unsigned int deviation = (1<<30)|((1<<30)-1);
  int calc_deviation;

  for (sptr = res; sptr < resptr; sptr++) {
   calc_deviation = baud - sptr->calc;
   if (calc_deviation < 0)
    calc_deviation = -calc_deviation;

   if (calc_deviation < deviation) {
    best = sptr;
    deviation = calc_deviation;
   }
  }
 }



 *clksrc = best->clksrc;
 *clk = best->src;

 return best->quot;
}
