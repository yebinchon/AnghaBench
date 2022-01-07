
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {unsigned int rxfilter; } ;
struct ath_softc {int sc_ah; TYPE_1__ rx; } ;


 int CONFIG ;
 unsigned int SUPPORTED_FILTERS ;
 int ath9k_hw_common (int ) ;
 int ath9k_hw_setrxfilter (int ,int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_calcrxfilter (struct ath_softc*) ;
 int ath_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static void ath9k_configure_filter(struct ieee80211_hw *hw,
       unsigned int changed_flags,
       unsigned int *total_flags,
       u64 multicast)
{
 struct ath_softc *sc = hw->priv;
 u32 rfilt;

 changed_flags &= SUPPORTED_FILTERS;
 *total_flags &= SUPPORTED_FILTERS;

 sc->rx.rxfilter = *total_flags;
 ath9k_ps_wakeup(sc);
 rfilt = ath_calcrxfilter(sc);
 ath9k_hw_setrxfilter(sc->sc_ah, rfilt);
 ath9k_ps_restore(sc);

 ath_dbg(ath9k_hw_common(sc->sc_ah), CONFIG, "Set HW RX filter: 0x%x\n",
  rfilt);
}
