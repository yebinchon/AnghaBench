
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int hw; int irq; } ;


 int ath9k_deinit_device (struct ath_softc*) ;
 int free_irq (int ,struct ath_softc*) ;
 int ieee80211_free_hw (int ) ;
 struct ieee80211_hw* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int ath_ahb_remove(struct platform_device *pdev)
{
 struct ieee80211_hw *hw = platform_get_drvdata(pdev);

 if (hw) {
  struct ath_softc *sc = hw->priv;

  ath9k_deinit_device(sc);
  free_irq(sc->irq, sc);
  ieee80211_free_hw(sc->hw);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
