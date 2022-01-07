
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; scalar_t__ enable_beacon; } ;


 int ATH9K_INT_SWBA ;
 int ATH_BCBUF ;
 int BEACON ;
 int TU_TO_USEC (int ) ;
 int ath9k_beacon_init (struct ath_softc*,int ,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,char*,int ,int ,int ) ;

__attribute__((used)) static void ath9k_beacon_config_ap(struct ath_softc *sc,
       struct ath_beacon_config *conf)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 u32 nexttbtt, intval;


 intval = TU_TO_USEC(conf->beacon_interval);
 intval /= ATH_BCBUF;
 nexttbtt = intval;

 if (conf->enable_beacon)
  ah->imask |= ATH9K_INT_SWBA;
 else
  ah->imask &= ~ATH9K_INT_SWBA;

 ath_dbg(common, BEACON,
  "AP (%s) nexttbtt: %u intval: %u conf_intval: %u\n",
  (conf->enable_beacon) ? "Enable" : "Disable",
  nexttbtt, intval, conf->beacon_interval);

 ath9k_beacon_init(sc, nexttbtt, intval, 1);
}
