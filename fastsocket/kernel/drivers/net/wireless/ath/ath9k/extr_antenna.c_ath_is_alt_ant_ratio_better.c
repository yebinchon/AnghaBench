
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 ;

__attribute__((used)) static inline bool ath_is_alt_ant_ratio_better(int alt_ratio, int maxdelta,
            int mindelta, int main_rssi_avg,
            int alt_rssi_avg, int pkt_count)
{
 return (((alt_ratio >= ATH_ANT_DIV_COMB_ALT_ANT_RATIO2) &&
   (alt_rssi_avg > main_rssi_avg + maxdelta)) ||
  (alt_rssi_avg > main_rssi_avg + mindelta)) && (pkt_count > 50);
}
