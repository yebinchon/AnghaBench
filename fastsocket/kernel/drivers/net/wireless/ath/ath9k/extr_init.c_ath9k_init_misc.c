
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int short_repeat; int count; int endless; int period; int fft_period; scalar_t__ enabled; } ;
struct TYPE_12__ {int count; } ;
struct TYPE_10__ {int ** bslot; int slottime; } ;
struct TYPE_9__ {int txpowlimit; } ;
struct ath_softc {TYPE_6__ spec_config; TYPE_5__ ant_comb; TYPE_7__* sc_ah; TYPE_3__ beacon; TYPE_2__ config; int last_rssi; } ;
struct TYPE_8__ {int timer; } ;
struct ath_common {int bssidmask; TYPE_1__ ani; } ;
struct TYPE_11__ {int hw_caps; } ;
struct TYPE_14__ {TYPE_4__ caps; } ;


 int ARRAY_SIZE (int **) ;
 int ATH9K_HW_CAP_ANT_DIV_COMB ;
 int ATH9K_SLOT_TIME_9 ;
 int ATH_ANT_DIV_COMB_INIT_COUNT ;
 int ATH_RSSI_DUMMY_MARKER ;
 int ATH_TXPOWER_MAX ;
 int ETH_ALEN ;
 struct ath_common* ath9k_hw_common (TYPE_7__*) ;
 int ath_ani_calibrate ;
 int ath_bcast_mac ;
 int memcpy (int ,int ,int ) ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static void ath9k_init_misc(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 int i = 0;

 setup_timer(&common->ani.timer, ath_ani_calibrate, (unsigned long)sc);

 sc->last_rssi = ATH_RSSI_DUMMY_MARKER;
 sc->config.txpowlimit = ATH_TXPOWER_MAX;
 memcpy(common->bssidmask, ath_bcast_mac, ETH_ALEN);
 sc->beacon.slottime = ATH9K_SLOT_TIME_9;

 for (i = 0; i < ARRAY_SIZE(sc->beacon.bslot); i++)
  sc->beacon.bslot[i] = ((void*)0);

 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_ANT_DIV_COMB)
  sc->ant_comb.count = ATH_ANT_DIV_COMB_INIT_COUNT;

 sc->spec_config.enabled = 0;
 sc->spec_config.short_repeat = 1;
 sc->spec_config.count = 8;
 sc->spec_config.endless = 0;
 sc->spec_config.period = 0xFF;
 sc->spec_config.fft_period = 0xF;
}
