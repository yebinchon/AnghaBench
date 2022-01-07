
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_beacon_config {int dummy; } ;
struct ath_softc {TYPE_1__* sc_ah; struct ath_beacon_config cur_beacon_conf; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int opmode; } ;


 int CONFIG ;




 int ath9k_beacon_config_adhoc (struct ath_softc*,struct ath_beacon_config*) ;
 int ath9k_beacon_config_ap (struct ath_softc*,struct ath_beacon_config*) ;
 int ath9k_beacon_config_sta (struct ath_softc*,struct ath_beacon_config*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_set_beacon(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;

 switch (sc->sc_ah->opmode) {
 case 130:
  ath9k_beacon_config_ap(sc, cur_conf);
  break;
 case 131:
 case 129:
  ath9k_beacon_config_adhoc(sc, cur_conf);
  break;
 case 128:
  ath9k_beacon_config_sta(sc, cur_conf);
  break;
 default:
  ath_dbg(common, CONFIG, "Unsupported beaconing mode\n");
  return;
 }
}
