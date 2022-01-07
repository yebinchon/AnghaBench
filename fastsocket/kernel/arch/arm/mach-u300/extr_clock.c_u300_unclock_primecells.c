
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable (int *) ;
 int intcon_clk ;
 int mmcsd_clk ;
 int spi_clk ;
 int uart1_clk ;
 int uart_clk ;

void u300_unclock_primecells(void)
{

 clk_disable(&intcon_clk);
 clk_disable(&uart_clk);



 clk_disable(&spi_clk);
 clk_disable(&mmcsd_clk);

}
