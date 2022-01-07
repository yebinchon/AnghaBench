
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ath_softc {int sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; int dtim_period; int dtim_count; int listen_interval; int bmiss_timeout; } ;
struct ath9k_beacon_state {int bs_intval; int bs_nexttbtt; int bs_dtimperiod; int bs_nextdtim; int bs_cfpperiod; int bs_cfpnext; int bs_bmissthreshold; int bs_sleepduration; scalar_t__ bs_cfpmaxduration; int bs_tsfoor_threshold; } ;
typedef int bs ;


 int ATH9K_INT_BMISS ;
 int ATH9K_TSFOOR_THRESHOLD ;
 int ATH_DEFAULT_BMISS_LIMIT ;
 int BEACON ;
 int DIV_ROUND_UP (int ,int) ;
 int FUDGE ;
 int IEEE80211_MS_TO_TU (int) ;
 int SC_OP_PRIM_STA_VIF ;
 int TSF_TO_TU (int,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_hw_gettsf64 (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_sta_beacon_timers (struct ath_hw*,struct ath9k_beacon_state*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int memset (struct ath9k_beacon_state*,int ,int) ;
 int roundup (int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_beacon_config_sta(struct ath_softc *sc,
        struct ath_beacon_config *conf)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_beacon_state bs;
 int dtimperiod, dtimcount, sleepduration;
 int cfpperiod, cfpcount;
 u32 nexttbtt = 0, intval, tsftu;
 u64 tsf;
 int num_beacons, offset, dtim_dec_count, cfp_dec_count;


 if (!test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags)) {
  ath_dbg(common, BEACON,
   "STA is not yet associated..skipping beacon config\n");
  return;
 }

 memset(&bs, 0, sizeof(bs));
 intval = conf->beacon_interval;





 dtimperiod = conf->dtim_period;
 dtimcount = conf->dtim_count;
 if (dtimcount >= dtimperiod)
  dtimcount = 0;
 cfpperiod = 1;
 cfpcount = 0;

 sleepduration = conf->listen_interval * intval;





 tsf = ath9k_hw_gettsf64(ah);
 tsftu = TSF_TO_TU(tsf>>32, tsf) + FUDGE;

 num_beacons = tsftu / intval + 1;
 offset = tsftu % intval;
 nexttbtt = tsftu - offset;
 if (offset)
  nexttbtt += intval;


 dtim_dec_count = num_beacons % dtimperiod;

 cfp_dec_count = (num_beacons / dtimperiod) % cfpperiod;
 if (dtim_dec_count)
  cfp_dec_count++;

 dtimcount -= dtim_dec_count;
 if (dtimcount < 0)
  dtimcount += dtimperiod;

 cfpcount -= cfp_dec_count;
 if (cfpcount < 0)
  cfpcount += cfpperiod;

 bs.bs_intval = intval;
 bs.bs_nexttbtt = nexttbtt;
 bs.bs_dtimperiod = dtimperiod*intval;
 bs.bs_nextdtim = bs.bs_nexttbtt + dtimcount*intval;
 bs.bs_cfpperiod = cfpperiod*bs.bs_dtimperiod;
 bs.bs_cfpnext = bs.bs_nextdtim + cfpcount*bs.bs_dtimperiod;
 bs.bs_cfpmaxduration = 0;







 if (sleepduration > intval) {
  bs.bs_bmissthreshold = conf->listen_interval *
   ATH_DEFAULT_BMISS_LIMIT / 2;
 } else {
  bs.bs_bmissthreshold = DIV_ROUND_UP(conf->bmiss_timeout, intval);
  if (bs.bs_bmissthreshold > 15)
   bs.bs_bmissthreshold = 15;
  else if (bs.bs_bmissthreshold <= 0)
   bs.bs_bmissthreshold = 1;
 }
 bs.bs_sleepduration = roundup(IEEE80211_MS_TO_TU(100), sleepduration);
 if (bs.bs_sleepduration > bs.bs_dtimperiod)
  bs.bs_sleepduration = bs.bs_dtimperiod;


 bs.bs_tsfoor_threshold = ATH9K_TSFOOR_THRESHOLD;

 ath_dbg(common, BEACON, "tsf: %llu tsftu: %u\n", tsf, tsftu);
 ath_dbg(common, BEACON,
  "bmiss: %u sleep: %u cfp-period: %u maxdur: %u next: %u\n",
  bs.bs_bmissthreshold, bs.bs_sleepduration,
  bs.bs_cfpperiod, bs.bs_cfpmaxduration, bs.bs_cfpnext);



 ath9k_hw_disable_interrupts(ah);
 ath9k_hw_set_sta_beacon_timers(ah, &bs);
 ah->imask |= ATH9K_INT_BMISS;

 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);
}
