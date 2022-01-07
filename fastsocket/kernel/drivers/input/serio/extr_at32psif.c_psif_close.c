
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct psif* port_data; } ;
struct psif {int pclk; scalar_t__ open; } ;


 int CR ;
 int CR_RXDIS ;
 int CR_TXDIS ;
 int IDR ;
 unsigned long PSIF_BIT (int ) ;
 int clk_disable (int ) ;
 int psif_writel (struct psif*,int ,unsigned long) ;

__attribute__((used)) static void psif_close(struct serio *io)
{
 struct psif *psif = io->port_data;

 psif->open = 0;

 psif_writel(psif, IDR, ~0UL);
 psif_writel(psif, CR, PSIF_BIT(CR_TXDIS) | PSIF_BIT(CR_RXDIS));

 clk_disable(psif->pclk);
}
