
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {void* main_lna_conf; void* alt_lna_conf; } ;
struct ath_ant_comb {int quick_scan_cnt; void* main_conf; void* first_quick_scan_conf; void* second_quick_scan_conf; int rssi_first; int rssi_second; int total_pkt_count; int first_ratio; int alt_good; int scan_not_start; int scan; int rssi_third; int rssi_lna1; int rssi_lna2; int second_ratio; } ;


 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 ;
 void* ATH_ANT_DIV_COMB_LNA1 ;
 int ATH_ANT_DIV_COMB_LNA1_DELTA_HI ;
 int ATH_ANT_DIV_COMB_LNA1_DELTA_LOW ;
 int ATH_ANT_DIV_COMB_LNA1_DELTA_MID ;
 int ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA ;
 void* ATH_ANT_DIV_COMB_LNA1_PLUS_LNA2 ;
 void* ATH_ANT_DIV_COMB_LNA2 ;
 int ath_is_alt_ant_ratio_better (int,int ,int ,int,int,int) ;

__attribute__((used)) static void ath_select_ant_div_from_quick_scan(struct ath_ant_comb *antcomb,
           struct ath_hw_antcomb_conf *div_ant_conf,
           int main_rssi_avg, int alt_rssi_avg,
           int alt_ratio)
{

 switch (antcomb->quick_scan_cnt) {
 case 0:

  div_ant_conf->main_lna_conf = antcomb->main_conf;
  div_ant_conf->alt_lna_conf = antcomb->first_quick_scan_conf;
  break;
 case 1:

  div_ant_conf->main_lna_conf = antcomb->main_conf;
  div_ant_conf->alt_lna_conf = antcomb->second_quick_scan_conf;
  antcomb->rssi_first = main_rssi_avg;
  antcomb->rssi_second = alt_rssi_avg;

  if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA1) {

   if (ath_is_alt_ant_ratio_better(alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  } else if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA2) {
   if (ath_is_alt_ant_ratio_better(alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_MID,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  } else {
   if ((((alt_ratio >= ATH_ANT_DIV_COMB_ALT_ANT_RATIO2) &&
         (alt_rssi_avg > main_rssi_avg +
          ATH_ANT_DIV_COMB_LNA1_DELTA_HI)) ||
        (alt_rssi_avg > main_rssi_avg)) &&
       (antcomb->total_pkt_count > 50))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  }
  break;
 case 2:
  antcomb->alt_good = 0;
  antcomb->scan_not_start = 0;
  antcomb->scan = 0;
  antcomb->rssi_first = main_rssi_avg;
  antcomb->rssi_third = alt_rssi_avg;

  if (antcomb->second_quick_scan_conf == ATH_ANT_DIV_COMB_LNA1)
   antcomb->rssi_lna1 = alt_rssi_avg;
  else if (antcomb->second_quick_scan_conf ==
    ATH_ANT_DIV_COMB_LNA2)
   antcomb->rssi_lna2 = alt_rssi_avg;
  else if (antcomb->second_quick_scan_conf ==
    ATH_ANT_DIV_COMB_LNA1_PLUS_LNA2) {
   if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA2)
    antcomb->rssi_lna2 = main_rssi_avg;
   else if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA1)
    antcomb->rssi_lna1 = main_rssi_avg;
  }

  if (antcomb->rssi_lna2 > antcomb->rssi_lna1 +
      ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA)
   div_ant_conf->main_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  else
   div_ant_conf->main_lna_conf = ATH_ANT_DIV_COMB_LNA1;

  if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA1) {
   if (ath_is_alt_ant_ratio_better(alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  } else if (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA2) {
   if (ath_is_alt_ant_ratio_better(alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_MID,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  } else {
   if ((((alt_ratio >= ATH_ANT_DIV_COMB_ALT_ANT_RATIO2) &&
         (alt_rssi_avg > main_rssi_avg +
          ATH_ANT_DIV_COMB_LNA1_DELTA_HI)) ||
        (alt_rssi_avg > main_rssi_avg)) &&
       (antcomb->total_pkt_count > 50))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  }


  if (antcomb->first_ratio && antcomb->second_ratio) {
   if (antcomb->rssi_second > antcomb->rssi_third) {

    if ((antcomb->first_quick_scan_conf ==
        ATH_ANT_DIV_COMB_LNA1) ||
        (antcomb->first_quick_scan_conf ==
        ATH_ANT_DIV_COMB_LNA2))

     if (div_ant_conf->main_lna_conf ==
         ATH_ANT_DIV_COMB_LNA2)
      div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA1;
     else
      div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA2;
    else

     div_ant_conf->alt_lna_conf =
      antcomb->first_quick_scan_conf;
   } else if ((antcomb->second_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA1) ||
       (antcomb->second_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA2)) {

    if (div_ant_conf->main_lna_conf ==
        ATH_ANT_DIV_COMB_LNA2)
     div_ant_conf->alt_lna_conf =
      ATH_ANT_DIV_COMB_LNA1;
    else
     div_ant_conf->alt_lna_conf =
      ATH_ANT_DIV_COMB_LNA2;
   } else {

    div_ant_conf->alt_lna_conf =
     antcomb->second_quick_scan_conf;
   }
  } else if (antcomb->first_ratio) {

   if ((antcomb->first_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA1) ||
       (antcomb->first_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA2))

    if (div_ant_conf->main_lna_conf ==
        ATH_ANT_DIV_COMB_LNA2)
     div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA1;
    else
     div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA2;
   else

    div_ant_conf->alt_lna_conf =
      antcomb->first_quick_scan_conf;
  } else if (antcomb->second_ratio) {

   if ((antcomb->second_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA1) ||
       (antcomb->second_quick_scan_conf ==
       ATH_ANT_DIV_COMB_LNA2))

    if (div_ant_conf->main_lna_conf ==
        ATH_ANT_DIV_COMB_LNA2)
     div_ant_conf->alt_lna_conf =
      ATH_ANT_DIV_COMB_LNA1;
    else
     div_ant_conf->alt_lna_conf =
      ATH_ANT_DIV_COMB_LNA2;
   else

    div_ant_conf->alt_lna_conf =
      antcomb->second_quick_scan_conf;
  } else {

   if ((antcomb->main_conf == ATH_ANT_DIV_COMB_LNA1) ||
       (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA2))

    if (div_ant_conf->main_lna_conf ==
        ATH_ANT_DIV_COMB_LNA2)
     div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA1;
    else
     div_ant_conf->alt_lna_conf =
       ATH_ANT_DIV_COMB_LNA2;
   else

    div_ant_conf->alt_lna_conf = antcomb->main_conf;
  }
  break;
 default:
  break;
 }
}
