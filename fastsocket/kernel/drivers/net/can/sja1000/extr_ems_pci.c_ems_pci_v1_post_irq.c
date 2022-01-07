
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ priv; } ;
struct ems_pci_card {scalar_t__ conf_addr; } ;


 scalar_t__ PITA2_ICR ;
 int PITA2_ICR_INT0 ;
 int PITA2_ICR_INT0_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ems_pci_v1_post_irq(const struct sja1000_priv *priv)
{
 struct ems_pci_card *card = (struct ems_pci_card *)priv->priv;


 writel(PITA2_ICR_INT0_EN | PITA2_ICR_INT0,
        card->conf_addr + PITA2_ICR);
}
