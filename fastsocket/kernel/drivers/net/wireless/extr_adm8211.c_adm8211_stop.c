
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; scalar_t__ nar; int mode; } ;
struct TYPE_2__ {int irq; } ;


 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int ) ;
 int IER ;
 int NAR ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int adm8211_free_rings (struct ieee80211_hw*) ;
 int free_irq (int ,struct ieee80211_hw*) ;

__attribute__((used)) static void adm8211_stop(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;

 priv->mode = NL80211_IFTYPE_UNSPECIFIED;
 priv->nar = 0;
 ADM8211_CSR_WRITE(NAR, 0);
 ADM8211_CSR_WRITE(IER, 0);
 ADM8211_CSR_READ(NAR);

 free_irq(priv->pdev->irq, dev);

 adm8211_free_rings(dev);
}
