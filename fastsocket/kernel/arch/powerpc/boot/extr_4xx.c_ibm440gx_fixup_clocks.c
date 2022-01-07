
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __ibm440eplike_fixup_clocks (unsigned int,unsigned int,int) ;
 int eplike_fixup_uart_clk (int,char*,unsigned int,unsigned int) ;

void ibm440gx_fixup_clocks(unsigned int sys_clk,
      unsigned int ser_clk,
      unsigned int tmr_clk)
{
 unsigned int plb_clk = __ibm440eplike_fixup_clocks(sys_clk, tmr_clk, 1);


 eplike_fixup_uart_clk(0, "/plb/opb/serial@40000200", ser_clk, plb_clk);
 eplike_fixup_uart_clk(1, "/plb/opb/serial@40000300", ser_clk, plb_clk);
}
