
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5212 ;
 int AR5K_PHY_ERR_FIL ;
 int AR5K_PHY_ERR_FIL_CCK ;
 int AR5K_PHY_ERR_FIL_OFDM ;
 int AR5K_PHY_ERR_FIL_RADAR ;
 int AR5K_RX_FILTER ;
 int AR5K_RX_FILTER_PHYERR ;
 int AR5K_RX_FILTER_RADARERR ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

u32
ath5k_hw_get_rx_filter(struct ath5k_hw *ah)
{
 u32 data, filter = 0;

 filter = ath5k_hw_reg_read(ah, AR5K_RX_FILTER);


 if (ah->ah_version == AR5K_AR5212) {
  data = ath5k_hw_reg_read(ah, AR5K_PHY_ERR_FIL);

  if (data & AR5K_PHY_ERR_FIL_RADAR)
   filter |= AR5K_RX_FILTER_RADARERR;
  if (data & (AR5K_PHY_ERR_FIL_OFDM | AR5K_PHY_ERR_FIL_CCK))
   filter |= AR5K_RX_FILTER_PHYERR;
 }

 return filter;
}
