
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {int wiphy; struct adm8211_priv* priv; } ;
struct adm8211_priv {int mode; TYPE_1__* pdev; int channel; } ;
struct TYPE_2__ {int irq; } ;


 int ADM8211_CSR_WRITE (int ,int) ;
 int ADM8211_IER_AIE ;
 int ADM8211_IER_GPTIE ;
 int ADM8211_IER_NIE ;
 int ADM8211_IER_RCIE ;
 int ADM8211_IER_TCIE ;
 int ADM8211_IER_TDUIE ;
 int IER ;
 int IRQF_SHARED ;
 int NL80211_IFTYPE_MONITOR ;
 int RDR ;
 int adm8211_hw_init (struct ieee80211_hw*) ;
 int adm8211_hw_reset (struct ieee80211_hw*) ;
 int adm8211_init_rings (struct ieee80211_hw*) ;
 int adm8211_interrupt ;
 int adm8211_rf_set_channel (struct ieee80211_hw*,int ) ;
 int adm8211_set_interval (struct ieee80211_hw*,int,int) ;
 int adm8211_update_mode (struct ieee80211_hw*) ;
 int request_irq (int ,int ,int ,char*,struct ieee80211_hw*) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int adm8211_start(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 int retval;


 retval = adm8211_hw_reset(dev);
 if (retval) {
  wiphy_err(dev->wiphy, "hardware reset failed\n");
  goto fail;
 }

 retval = adm8211_init_rings(dev);
 if (retval) {
  wiphy_err(dev->wiphy, "failed to initialize rings\n");
  goto fail;
 }


 adm8211_hw_init(dev);
 adm8211_rf_set_channel(dev, priv->channel);

 retval = request_irq(priv->pdev->irq, adm8211_interrupt,
        IRQF_SHARED, "adm8211", dev);
 if (retval) {
  wiphy_err(dev->wiphy, "failed to register IRQ handler\n");
  goto fail;
 }

 ADM8211_CSR_WRITE(IER, ADM8211_IER_NIE | ADM8211_IER_AIE |
          ADM8211_IER_RCIE | ADM8211_IER_TCIE |
          ADM8211_IER_TDUIE | ADM8211_IER_GPTIE);
 priv->mode = NL80211_IFTYPE_MONITOR;
 adm8211_update_mode(dev);
 ADM8211_CSR_WRITE(RDR, 0);

 adm8211_set_interval(dev, 100, 10);
 return 0;

fail:
 return retval;
}
