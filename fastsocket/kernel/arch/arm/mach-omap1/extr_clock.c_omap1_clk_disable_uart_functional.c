
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_clk {int sysc_addr; } ;
struct clk {int dummy; } ;


 int omap1_clk_disable_generic (struct clk*) ;
 int omap_readb (int ) ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static void omap1_clk_disable_uart_functional(struct clk *clk)
{
 struct uart_clk *uclk;


 uclk = (struct uart_clk *)clk;
 omap_writeb((omap_readb(uclk->sysc_addr) & ~0x18), uclk->sysc_addr);

 omap1_clk_disable_generic(clk);
}
