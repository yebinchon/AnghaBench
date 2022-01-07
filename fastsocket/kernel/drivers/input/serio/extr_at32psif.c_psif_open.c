
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct psif* port_data; } ;
struct psif {int open; int pclk; } ;


 int CR ;
 int CR_RXEN ;
 int CR_TXEN ;
 int IER ;
 int PSIF_BIT (int ) ;
 int RXRDY ;
 int clk_enable (int ) ;
 int psif_writel (struct psif*,int ,int) ;

__attribute__((used)) static int psif_open(struct serio *io)
{
 struct psif *psif = io->port_data;
 int retval;

 retval = clk_enable(psif->pclk);
 if (retval)
  goto out;

 psif_writel(psif, CR, PSIF_BIT(CR_TXEN) | PSIF_BIT(CR_RXEN));
 psif_writel(psif, IER, PSIF_BIT(RXRDY));

 psif->open = 1;
out:
 return retval;
}
