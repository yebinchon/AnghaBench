
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tx_chainmask; int rx_chainmask; int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;


 int AR_PHY_ANALOG_SWAP ;
 int AR_PHY_CAL_CHAINMASK ;
 int AR_PHY_RX_CHAINMASK ;
 int AR_PHY_SWAP_ALT_CHAIN ;
 int AR_SELFGEN_MASK ;
 int ATH9K_HW_CAP_APM ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

void ar9003_hw_set_chain_masks(struct ath_hw *ah, u8 rx, u8 tx)
{
 if (ah->caps.tx_chainmask == 5 || ah->caps.rx_chainmask == 5)
  REG_SET_BIT(ah, AR_PHY_ANALOG_SWAP,
       AR_PHY_SWAP_ALT_CHAIN);

 REG_WRITE(ah, AR_PHY_RX_CHAINMASK, rx);
 REG_WRITE(ah, AR_PHY_CAL_CHAINMASK, rx);

 if ((ah->caps.hw_caps & ATH9K_HW_CAP_APM) && (tx == 0x7))
  tx = 3;

 REG_WRITE(ah, AR_SELFGEN_MASK, tx);
}
