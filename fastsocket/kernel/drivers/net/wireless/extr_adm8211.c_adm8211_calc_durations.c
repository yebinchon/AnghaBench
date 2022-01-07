
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IEEE80211_DUR_DS_FAST_ACK ;
 scalar_t__ IEEE80211_DUR_DS_FAST_CTS ;
 int IEEE80211_DUR_DS_FAST_PLCPHDR ;
 int IEEE80211_DUR_DS_LONG_PREAMBLE ;
 int IEEE80211_DUR_DS_SHORT_PREAMBLE ;
 int IEEE80211_DUR_DS_SIFS ;
 scalar_t__ IEEE80211_DUR_DS_SLOW_ACK ;
 scalar_t__ IEEE80211_DUR_DS_SLOW_CTS ;
 int IEEE80211_DUR_DS_SLOW_PLCPHDR ;
 int PLCP_SIGNAL_11M ;
 int PLCP_SIGNAL_2M ;

__attribute__((used)) static void adm8211_calc_durations(int *dur, int *plcp, size_t payload_len, int len,
       int plcp_signal, int short_preamble)
{
 int remainder;

 *dur = (80 * (24 + payload_len) + plcp_signal - 1)
  / plcp_signal;

 if (plcp_signal <= PLCP_SIGNAL_2M)

  *dur += 3 * (10 +
        72 +
        24) +
        112 + 112;
 else

  *dur += 3 * (10 +
        72 +
        24) +
        56 + 56;


 if (!short_preamble)
  *dur += 3 * (144 -
        72) +
   3 * (48 -
        24);


 *plcp = (80 * len) / plcp_signal;
 remainder = (80 * len) % plcp_signal;
 if (plcp_signal == PLCP_SIGNAL_11M &&
     remainder <= 30 && remainder > 0)
  *plcp = (*plcp | 0x8000) + 1;
 else if (remainder)
  (*plcp)++;
}
