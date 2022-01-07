
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY_ERR ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int AR_PHY_ERR_RADAR ;
 int AR_RXCFG ;
 int AR_RXCFG_ZLFDMA ;
 int AR_RX_FILTER ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int ATH9K_RX_FILTER_CONTROL_WRAPPER ;
 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

void ath9k_hw_setrxfilter(struct ath_hw *ah, u32 bits)
{
 u32 phybits;

 ENABLE_REGWRITE_BUFFER(ah);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah))
  bits |= ATH9K_RX_FILTER_CONTROL_WRAPPER;

 REG_WRITE(ah, AR_RX_FILTER, bits);

 phybits = 0;
 if (bits & ATH9K_RX_FILTER_PHYRADAR)
  phybits |= AR_PHY_ERR_RADAR;
 if (bits & ATH9K_RX_FILTER_PHYERR)
  phybits |= AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING;
 REG_WRITE(ah, AR_PHY_ERR, phybits);

 if (phybits)
  REG_SET_BIT(ah, AR_RXCFG, AR_RXCFG_ZLFDMA);
 else
  REG_CLR_BIT(ah, AR_RXCFG, AR_RXCFG_ZLFDMA);

 REGWRITE_BUFFER_FLUSH(ah);
}
