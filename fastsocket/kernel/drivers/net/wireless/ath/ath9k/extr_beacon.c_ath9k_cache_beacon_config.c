
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_bss_conf {int beacon_int; int dtim_period; int ibss_creator; int bssid; } ;
struct ath_beacon_config {int beacon_interval; int dtim_period; int listen_interval; int dtim_count; int bmiss_timeout; int ibss_creator; } ;
struct ath_softc {struct ath_beacon_config cur_beacon_conf; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int ATH_DEFAULT_BMISS_LIMIT ;
 int BEACON ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;

__attribute__((used)) static void ath9k_cache_beacon_config(struct ath_softc *sc,
          struct ieee80211_bss_conf *bss_conf)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;

 ath_dbg(common, BEACON,
  "Caching beacon data for BSS: %pM\n", bss_conf->bssid);

 cur_conf->beacon_interval = bss_conf->beacon_int;
 cur_conf->dtim_period = bss_conf->dtim_period;
 cur_conf->listen_interval = 1;
 cur_conf->dtim_count = 1;
 cur_conf->ibss_creator = bss_conf->ibss_creator;
 cur_conf->bmiss_timeout =
  ATH_DEFAULT_BMISS_LIMIT * cur_conf->beacon_interval;







 if (cur_conf->beacon_interval == 0)
  cur_conf->beacon_interval = 100;






 if (cur_conf->dtim_period == 0)
  cur_conf->dtim_period = 1;

}
