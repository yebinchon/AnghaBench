
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ant_comb {int total_pkt_count; int main_total_rssi; int alt_total_rssi; int alt_recv_cnt; int scan; int alt_good; scalar_t__ count; int scan_not_start; int rssi_lna2; int rssi_lna1; int rssi_add; int rssi_sub; scalar_t__ main_recv_cnt; scalar_t__ scan_start_time; int quick_scan_cnt; } ;
struct ath_softc {int sc_ah; struct ath_ant_comb ant_comb; } ;
struct ath_rx_status {int rs_rssi_ctl0; int rs_rssi_ctl1; int rs_rssi_ctl2; scalar_t__ rs_moreaggr; } ;
struct ath_hw_antcomb_conf {int alt_lna_conf; int main_lna_conf; int lna1_lna2_delta; int div_group; } ;


 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO ;

 int ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA ;



 scalar_t__ ATH_ANT_DIV_COMB_MAX_COUNT ;
 int ATH_ANT_DIV_COMB_MAX_PKTCOUNT ;
 int ATH_ANT_DIV_COMB_SHORT_SCAN_INTR ;
 int ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT ;
 int ATH_ANT_RX_CURRENT_SHIFT ;
 int ATH_ANT_RX_MAIN_SHIFT ;
 int ATH_ANT_RX_MASK ;
 int ath9k_hw_antdiv_comb_conf_get (int ,struct ath_hw_antcomb_conf*) ;
 int ath9k_hw_antdiv_comb_conf_set (int ,struct ath_hw_antcomb_conf*) ;
 scalar_t__ ath_ant_div_comb_alt_check (int ,int,int,int,int,int) ;
 int ath_ant_div_conf_fast_divbias (struct ath_hw_antcomb_conf*,struct ath_ant_comb*,int) ;
 int ath_lnaconf_alt_good_scan (struct ath_ant_comb*,struct ath_hw_antcomb_conf,int) ;
 int ath_select_ant_div_from_quick_scan (struct ath_ant_comb*,struct ath_hw_antcomb_conf*,int,int,int) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

void ath_ant_comb_scan(struct ath_softc *sc, struct ath_rx_status *rs)
{
 struct ath_hw_antcomb_conf div_ant_conf;
 struct ath_ant_comb *antcomb = &sc->ant_comb;
 int alt_ratio = 0, alt_rssi_avg = 0, main_rssi_avg = 0, curr_alt_set;
 int curr_main_set;
 int main_rssi = rs->rs_rssi_ctl0;
 int alt_rssi = rs->rs_rssi_ctl1;
 int rx_ant_conf, main_ant_conf;
 bool short_scan = 0;

 rx_ant_conf = (rs->rs_rssi_ctl2 >> ATH_ANT_RX_CURRENT_SHIFT) &
         ATH_ANT_RX_MASK;
 main_ant_conf = (rs->rs_rssi_ctl2 >> ATH_ANT_RX_MAIN_SHIFT) &
    ATH_ANT_RX_MASK;


 if (main_rssi > 0 && alt_rssi > 0) {
  antcomb->total_pkt_count++;
  antcomb->main_total_rssi += main_rssi;
  antcomb->alt_total_rssi += alt_rssi;
  if (main_ant_conf == rx_ant_conf)
   antcomb->main_recv_cnt++;
  else
   antcomb->alt_recv_cnt++;
 }


 if (antcomb->scan && antcomb->alt_good) {
  if (time_after(jiffies, antcomb->scan_start_time +
      msecs_to_jiffies(ATH_ANT_DIV_COMB_SHORT_SCAN_INTR)))
   short_scan = 1;
  else
   if (antcomb->total_pkt_count ==
       ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT) {
    alt_ratio = ((antcomb->alt_recv_cnt * 100) /
         antcomb->total_pkt_count);
    if (alt_ratio < ATH_ANT_DIV_COMB_ALT_ANT_RATIO)
     short_scan = 1;
   }
 }

 if (((antcomb->total_pkt_count < ATH_ANT_DIV_COMB_MAX_PKTCOUNT) ||
     rs->rs_moreaggr) && !short_scan)
  return;

 if (antcomb->total_pkt_count) {
  alt_ratio = ((antcomb->alt_recv_cnt * 100) /
        antcomb->total_pkt_count);
  main_rssi_avg = (antcomb->main_total_rssi /
     antcomb->total_pkt_count);
  alt_rssi_avg = (antcomb->alt_total_rssi /
     antcomb->total_pkt_count);
 }


 ath9k_hw_antdiv_comb_conf_get(sc->sc_ah, &div_ant_conf);
 curr_alt_set = div_ant_conf.alt_lna_conf;
 curr_main_set = div_ant_conf.main_lna_conf;

 antcomb->count++;

 if (antcomb->count == ATH_ANT_DIV_COMB_MAX_COUNT) {
  if (alt_ratio > ATH_ANT_DIV_COMB_ALT_ANT_RATIO) {
   ath_lnaconf_alt_good_scan(antcomb, div_ant_conf,
        main_rssi_avg);
   antcomb->alt_good = 1;
  } else {
   antcomb->alt_good = 0;
  }

  antcomb->count = 0;
  antcomb->scan = 1;
  antcomb->scan_not_start = 1;
 }

 if (!antcomb->scan) {
  if (ath_ant_div_comb_alt_check(div_ant_conf.div_group,
     alt_ratio, curr_main_set, curr_alt_set,
     alt_rssi_avg, main_rssi_avg)) {
   if (curr_alt_set == 128) {

    div_ant_conf.main_lna_conf =
      128;
    div_ant_conf.alt_lna_conf =
      131;
   } else if (curr_alt_set == 131) {
    div_ant_conf.main_lna_conf =
      131;
    div_ant_conf.alt_lna_conf =
      128;
   }

   goto div_comb_done;
  } else if ((curr_alt_set != 131) &&
      (curr_alt_set != 128)) {

   if (curr_main_set == 128)
    div_ant_conf.alt_lna_conf =
      131;
   else if (curr_main_set == 131)
    div_ant_conf.alt_lna_conf =
      128;

   goto div_comb_done;
  }

  if ((alt_rssi_avg < (main_rssi_avg +
         div_ant_conf.lna1_lna2_delta)))
   goto div_comb_done;
 }

 if (!antcomb->scan_not_start) {
  switch (curr_alt_set) {
  case 128:
   antcomb->rssi_lna2 = alt_rssi_avg;
   antcomb->rssi_lna1 = main_rssi_avg;
   antcomb->scan = 1;

   div_ant_conf.main_lna_conf =
    131;
   div_ant_conf.alt_lna_conf =
    129;
   break;
  case 131:
   antcomb->rssi_lna1 = alt_rssi_avg;
   antcomb->rssi_lna2 = main_rssi_avg;
   antcomb->scan = 1;

   div_ant_conf.main_lna_conf = 128;
   div_ant_conf.alt_lna_conf =
    129;
   break;
  case 129:
   antcomb->rssi_add = alt_rssi_avg;
   antcomb->scan = 1;

   div_ant_conf.alt_lna_conf =
    130;
   break;
  case 130:
   antcomb->rssi_sub = alt_rssi_avg;
   antcomb->scan = 0;
   if (antcomb->rssi_lna2 >
       (antcomb->rssi_lna1 +
       ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA)) {

    if ((antcomb->rssi_add > antcomb->rssi_lna1) &&
        (antcomb->rssi_add > antcomb->rssi_sub)) {

     div_ant_conf.main_lna_conf =
      128;
     div_ant_conf.alt_lna_conf =
      129;
    } else if (antcomb->rssi_sub >
        antcomb->rssi_lna1) {

     div_ant_conf.main_lna_conf =
      128;
     div_ant_conf.alt_lna_conf =
      130;
    } else {

     div_ant_conf.main_lna_conf =
      128;
     div_ant_conf.alt_lna_conf =
      131;
    }
   } else {

    if ((antcomb->rssi_add > antcomb->rssi_lna2) &&
        (antcomb->rssi_add > antcomb->rssi_sub)) {

     div_ant_conf.main_lna_conf =
      131;
     div_ant_conf.alt_lna_conf =
      129;
    } else if (antcomb->rssi_sub >
        antcomb->rssi_lna1) {

     div_ant_conf.main_lna_conf =
      131;
     div_ant_conf.alt_lna_conf =
      130;
    } else {

     div_ant_conf.main_lna_conf =
      131;
     div_ant_conf.alt_lna_conf =
      128;
    }
   }
   break;
  default:
   break;
  }
 } else {
  if (!antcomb->alt_good) {
   antcomb->scan_not_start = 0;

   if (curr_main_set == 128) {
    div_ant_conf.main_lna_conf =
      128;
    div_ant_conf.alt_lna_conf =
      131;
   } else if (curr_main_set == 131) {
    div_ant_conf.main_lna_conf =
      131;
    div_ant_conf.alt_lna_conf =
      128;
   }
   goto div_comb_done;
  }
 }

 ath_select_ant_div_from_quick_scan(antcomb, &div_ant_conf,
        main_rssi_avg, alt_rssi_avg,
        alt_ratio);

 antcomb->quick_scan_cnt++;

div_comb_done:
 ath_ant_div_conf_fast_divbias(&div_ant_conf, antcomb, alt_ratio);
 ath9k_hw_antdiv_comb_conf_set(sc->sc_ah, &div_ant_conf);

 antcomb->scan_start_time = jiffies;
 antcomb->total_pkt_count = 0;
 antcomb->main_total_rssi = 0;
 antcomb->alt_total_rssi = 0;
 antcomb->main_recv_cnt = 0;
 antcomb->alt_recv_cnt = 0;
}
