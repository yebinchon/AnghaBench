
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int ah_ant_mode; } ;






__attribute__((used)) static int
ath5k_get_antenna(struct ieee80211_hw *hw, u32 *tx_ant, u32 *rx_ant)
{
 struct ath5k_hw *ah = hw->priv;

 switch (ah->ah_ant_mode) {
 case 129:
  *tx_ant = 1; *rx_ant = 1; break;
 case 128:
  *tx_ant = 2; *rx_ant = 2; break;
 case 130:
  *tx_ant = 3; *rx_ant = 3; break;
 }
 return 0;
}
