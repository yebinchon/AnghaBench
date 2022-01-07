
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_vif {int av_bslot; int tsf_adjust; } ;
struct ath_beacon_config {int beacon_interval; } ;
struct ath_softc {struct ath_beacon_config cur_beacon_conf; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int ATH_BCBUF ;
 int CONFIG ;
 int TU_TO_USEC (int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,unsigned long long,int) ;
 int cpu_to_le64 (int ) ;

void ath9k_set_tsfadjust(struct ath_softc *sc, struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;
 struct ath_vif *avp = (void *)vif->drv_priv;
 u64 tsfadjust;

 if (avp->av_bslot == 0)
  return;

 tsfadjust = cur_conf->beacon_interval * avp->av_bslot / ATH_BCBUF;
 avp->tsf_adjust = cpu_to_le64(TU_TO_USEC(tsfadjust));

 ath_dbg(common, CONFIG, "tsfadjust is: %llu for bslot: %d\n",
  (unsigned long long)tsfadjust, avp->av_bslot);
}
