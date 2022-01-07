
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rate {int bitrate; } ;
struct ath5k_hw {int ah_bwmode; int hw; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
typedef int __le16 ;





 int AR5K_INIT_OFDM_PLCP_BITS ;
 int AR5K_INIT_OFDM_PREAMBLE_TIME_MIN ;
 int AR5K_INIT_OFDM_PREAMPLE_TIME ;
 int AR5K_INIT_OFDM_SYMBOL_TIME ;
 int AR5K_INIT_SIFS_DEFAULT_BG ;
 int AR5K_INIT_SIFS_HALF_RATE ;
 int AR5K_INIT_SIFS_QUARTER_RATE ;
 int AR5K_INIT_SIFS_TURBO ;
 int DIV_ROUND_UP (int,int) ;
 int ieee80211_generic_frame_duration (int ,int *,int,int,struct ieee80211_rate*) ;
 int le16_to_cpu (int ) ;

int
ath5k_hw_get_frame_duration(struct ath5k_hw *ah, enum ieee80211_band band,
  int len, struct ieee80211_rate *rate, bool shortpre)
{
 int sifs, preamble, plcp_bits, sym_time;
 int bitrate, bits, symbols, symbol_bits;
 int dur;


 if (!ah->ah_bwmode) {
  __le16 raw_dur = ieee80211_generic_frame_duration(ah->hw,
     ((void*)0), band, len, rate);


  dur = le16_to_cpu(raw_dur);
  if (shortpre)
   dur -= 96;

  return dur;
 }

 bitrate = rate->bitrate;
 preamble = AR5K_INIT_OFDM_PREAMPLE_TIME;
 plcp_bits = AR5K_INIT_OFDM_PLCP_BITS;
 sym_time = AR5K_INIT_OFDM_SYMBOL_TIME;

 switch (ah->ah_bwmode) {
 case 129:
  sifs = AR5K_INIT_SIFS_TURBO;
  preamble = AR5K_INIT_OFDM_PREAMBLE_TIME_MIN;
  break;
 case 130:
  sifs = AR5K_INIT_SIFS_HALF_RATE;
  preamble *= 2;
  sym_time *= 2;
  break;
 case 128:
  sifs = AR5K_INIT_SIFS_QUARTER_RATE;
  preamble *= 4;
  sym_time *= 4;
  break;
 default:
  sifs = AR5K_INIT_SIFS_DEFAULT_BG;
  break;
 }

 bits = plcp_bits + (len << 3);

 symbol_bits = bitrate * sym_time;
 symbols = DIV_ROUND_UP(bits * 10, symbol_bits);

 dur = sifs + preamble + (sym_time * symbols);

 return dur;
}
