
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct regulatory_request {int dfs_region; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_7__ {int txpowlimit; } ;
struct ath_softc {TYPE_4__* dfs_detector; int curtxpow; TYPE_3__ config; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int power_limit; } ;
struct ath_hw {TYPE_2__* curchan; } ;
struct TYPE_8__ {int (* set_dfs_domain ) (TYPE_4__*,int ) ;} ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int max_power; } ;


 struct ath_regulatory* ath9k_hw_regulatory (struct ath_hw*) ;
 int ath9k_hw_set_txpowerlimit (struct ath_hw*,int,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_reg_notifier_apply (struct wiphy*,struct regulatory_request*,struct ath_regulatory*) ;
 int stub1 (TYPE_4__*,int ) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void ath9k_reg_notifier(struct wiphy *wiphy,
          struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_regulatory *reg = ath9k_hw_regulatory(ah);

 ath_reg_notifier_apply(wiphy, request, reg);


 if (ah->curchan) {
  sc->config.txpowlimit = 2 * ah->curchan->chan->max_power;
  ath9k_ps_wakeup(sc);
  ath9k_hw_set_txpowerlimit(ah, sc->config.txpowlimit, 0);
  sc->curtxpow = ath9k_hw_regulatory(ah)->power_limit;

  if (sc->dfs_detector != ((void*)0))
   sc->dfs_detector->set_dfs_domain(sc->dfs_detector,
        request->dfs_region);
  ath9k_ps_restore(sc);
 }
}
