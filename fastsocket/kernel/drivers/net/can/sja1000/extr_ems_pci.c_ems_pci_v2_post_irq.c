
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ priv; } ;
struct ems_pci_card {scalar_t__ conf_addr; } ;


 scalar_t__ PLX_ICSR ;
 int PLX_ICSR_ENA_CLR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ems_pci_v2_post_irq(const struct sja1000_priv *priv)
{
 struct ems_pci_card *card = (struct ems_pci_card *)priv->priv;

 writel(PLX_ICSR_ENA_CLR, card->conf_addr + PLX_ICSR);
}
