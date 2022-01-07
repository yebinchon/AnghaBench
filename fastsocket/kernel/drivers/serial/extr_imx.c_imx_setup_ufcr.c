
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; int clk; } ;


 int RXTL ;
 int TXTL ;
 scalar_t__ UFCR ;
 unsigned int UFCR_RFDIV_REG (unsigned int) ;
 int clk_get_rate (int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int imx_setup_ufcr(struct imx_port *sport, unsigned int mode)
{
 unsigned int val;
 unsigned int ufcr_rfdiv;




 val = TXTL << 10 | RXTL;
 ufcr_rfdiv = (clk_get_rate(sport->clk) + sport->port.uartclk / 2)
   / sport->port.uartclk;

 if(!ufcr_rfdiv)
  ufcr_rfdiv = 1;

 val |= UFCR_RFDIV_REG(ufcr_rfdiv);

 writel(val, sport->port.membase + UFCR);

 return 0;
}
