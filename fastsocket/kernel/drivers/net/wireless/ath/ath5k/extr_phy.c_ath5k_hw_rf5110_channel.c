
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int dummy; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_RF_BUFFER ;
 int AR5K_RF_BUFFER_CONTROL_0 ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;
 int ath5k_hw_rf5110_chan2athchan (struct ieee80211_channel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
ath5k_hw_rf5110_channel(struct ath5k_hw *ah,
  struct ieee80211_channel *channel)
{
 u32 data;




 data = ath5k_hw_rf5110_chan2athchan(channel);
 ath5k_hw_reg_write(ah, data, AR5K_RF_BUFFER);
 ath5k_hw_reg_write(ah, 0, AR5K_RF_BUFFER_CONTROL_0);
 usleep_range(1000, 1500);

 return 0;
}
