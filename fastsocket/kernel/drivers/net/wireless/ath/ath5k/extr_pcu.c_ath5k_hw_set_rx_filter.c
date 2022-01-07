
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5212 ;
 int AR5K_PHY_ERR_FIL ;
 int AR5K_PHY_ERR_FIL_CCK ;
 int AR5K_PHY_ERR_FIL_OFDM ;
 int AR5K_PHY_ERR_FIL_RADAR ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_RXCFG ;
 int AR5K_RXCFG_ZLFDMA ;
 int AR5K_RX_FILTER ;
 int AR5K_RX_FILTER_PHYERR ;
 int AR5K_RX_FILTER_PROM ;
 int AR5K_RX_FILTER_RADARERR ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

void
ath5k_hw_set_rx_filter(struct ath5k_hw *ah, u32 filter)
{
 u32 data = 0;


 if (ah->ah_version == AR5K_AR5212) {
  if (filter & AR5K_RX_FILTER_RADARERR)
   data |= AR5K_PHY_ERR_FIL_RADAR;
  if (filter & AR5K_RX_FILTER_PHYERR)
   data |= AR5K_PHY_ERR_FIL_OFDM | AR5K_PHY_ERR_FIL_CCK;
 }




 if (ah->ah_version == AR5K_AR5210 &&
   (filter & AR5K_RX_FILTER_RADARERR)) {
  filter &= ~AR5K_RX_FILTER_RADARERR;
  filter |= AR5K_RX_FILTER_PROM;
 }


 if (data)
  AR5K_REG_ENABLE_BITS(ah, AR5K_RXCFG, AR5K_RXCFG_ZLFDMA);
 else
  AR5K_REG_DISABLE_BITS(ah, AR5K_RXCFG, AR5K_RXCFG_ZLFDMA);


 ath5k_hw_reg_write(ah, filter & 0xff, AR5K_RX_FILTER);


 if (ah->ah_version == AR5K_AR5212)
  ath5k_hw_reg_write(ah, data, AR5K_PHY_ERR_FIL);

}
