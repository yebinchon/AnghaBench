
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int center_freq; } ;


 int ath5k_hw_bitswap (int,int) ;
 int ieee80211_frequency_to_channel (int ) ;

__attribute__((used)) static u32
ath5k_hw_rf5110_chan2athchan(struct ieee80211_channel *channel)
{
 u32 athchan;

 athchan = (ath5k_hw_bitswap(
   (ieee80211_frequency_to_channel(
    channel->center_freq) - 24) / 2, 5)
    << 1) | (1 << 6) | 0x1;
 return athchan;
}
