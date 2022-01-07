
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct s3c24xx_uart_port {TYPE_1__* info; } ;
struct s3c24xx_uart_clksrc {unsigned long divisor; int name; } ;
struct baud_calc {unsigned long quot; unsigned long calc; struct s3c24xx_uart_clksrc* clksrc; int * src; } ;
struct TYPE_2__ {scalar_t__ has_divslot; } ;


 scalar_t__ IS_ERR (int *) ;
 int * clk_get (int ,int ) ;
 unsigned long clk_get_rate (int *) ;
 struct s3c24xx_uart_port* to_ourport (struct uart_port*) ;

__attribute__((used)) static int s3c24xx_serial_calcbaud(struct baud_calc *calc,
       struct uart_port *port,
       struct s3c24xx_uart_clksrc *clksrc,
       unsigned int baud)
{
 struct s3c24xx_uart_port *ourport = to_ourport(port);
 unsigned long rate;

 calc->src = clk_get(port->dev, clksrc->name);
 if (calc->src == ((void*)0) || IS_ERR(calc->src))
  return 0;

 rate = clk_get_rate(calc->src);
 rate /= clksrc->divisor;

 calc->clksrc = clksrc;

 if (ourport->info->has_divslot) {
  unsigned long div = rate / baud;
  calc->quot = div / 16;
  calc->calc = rate / div;
 } else {
  calc->quot = (rate + (8 * baud)) / (16 * baud);
  calc->calc = (rate / (calc->quot * 16));
 }

 calc->quot--;
 return 1;
}
