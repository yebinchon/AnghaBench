
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dfq_valid; int radio_hw_enable; int mac_suspended; int noisecalc; int irq_mask; int * dma_reason; scalar_t__ irq_reason; int phy; int stats; } ;


 int B43_IRQ_MASKTEMPLATE ;
 int B43_IRQ_PHY_TXERR ;
 scalar_t__ B43_VERBOSITY_DEBUG ;
 scalar_t__ b43_modparam_verbose ;
 int memset (int *,int ,int) ;
 int setup_struct_phy_for_init (struct b43_wldev*,int *) ;

__attribute__((used)) static void setup_struct_wldev_for_init(struct b43_wldev *dev)
{
 dev->dfq_valid = 0;



 dev->radio_hw_enable = 1;


 memset(&dev->stats, 0, sizeof(dev->stats));

 setup_struct_phy_for_init(dev, &dev->phy);


 dev->irq_reason = 0;
 memset(dev->dma_reason, 0, sizeof(dev->dma_reason));
 dev->irq_mask = B43_IRQ_MASKTEMPLATE;
 if (b43_modparam_verbose < B43_VERBOSITY_DEBUG)
  dev->irq_mask &= ~B43_IRQ_PHY_TXERR;

 dev->mac_suspended = 1;


 memset(&dev->noisecalc, 0, sizeof(dev->noisecalc));
}
