
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_hw {int rxchainmask; int txchainmask; } ;
struct ath9k_channel {int dummy; } ;


 unsigned long AR_PHY_EXT_ATTEN_CTL_0 ;
 unsigned long AR_PHY_EXT_ATTEN_CTL_1 ;
 unsigned long AR_PHY_EXT_ATTEN_CTL_2 ;
 int AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB ;
 int AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 int BIT (int) ;
 int REG_RMW_FIELD (struct ath_hw*,unsigned long,int ,int ) ;
 int ar9003_hw_atten_chain_get (struct ath_hw*,int,struct ath9k_channel*) ;
 int ar9003_hw_atten_chain_get_margin (struct ath_hw*,int,struct ath9k_channel*) ;

__attribute__((used)) static void ar9003_hw_atten_apply(struct ath_hw *ah, struct ath9k_channel *chan)
{
 int i;
 u16 value;
 unsigned long ext_atten_reg[3] = {AR_PHY_EXT_ATTEN_CTL_0,
       AR_PHY_EXT_ATTEN_CTL_1,
       AR_PHY_EXT_ATTEN_CTL_2,
      };

 if ((AR_SREV_9462(ah)) && (ah->rxchainmask == 0x2)) {
  value = ar9003_hw_atten_chain_get(ah, 1, chan);
  REG_RMW_FIELD(ah, ext_atten_reg[0],
         AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, value);

  value = ar9003_hw_atten_chain_get_margin(ah, 1, chan);
  REG_RMW_FIELD(ah, ext_atten_reg[0],
         AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN,
         value);
 }


 for (i = 0; i < 3; i++) {
  if (ah->txchainmask & BIT(i)) {
   value = ar9003_hw_atten_chain_get(ah, i, chan);
   REG_RMW_FIELD(ah, ext_atten_reg[i],
          AR_PHY_EXT_ATTEN_CTL_XATTEN1_DB, value);

   value = ar9003_hw_atten_chain_get_margin(ah, i, chan);
   REG_RMW_FIELD(ah, ext_atten_reg[i],
          AR_PHY_EXT_ATTEN_CTL_XATTEN1_MARGIN,
          value);
  }
 }
}
