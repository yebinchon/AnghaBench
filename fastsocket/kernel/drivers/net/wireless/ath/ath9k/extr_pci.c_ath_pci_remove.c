
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int hw; int irq; TYPE_1__* sc_ah; } ;
struct TYPE_2__ {int ah_flags; } ;


 int AH_UNPLUGGED ;
 int ath9k_deinit_device (struct ath_softc*) ;
 int free_irq (int ,struct ath_softc*) ;
 int ieee80211_free_hw (int ) ;
 int is_ath9k_unloaded ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ath_pci_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *hw = pci_get_drvdata(pdev);
 struct ath_softc *sc = hw->priv;

 if (!is_ath9k_unloaded)
  sc->sc_ah->ah_flags |= AH_UNPLUGGED;
 ath9k_deinit_device(sc);
 free_irq(sc->irq, sc);
 ieee80211_free_hw(sc->hw);
}
