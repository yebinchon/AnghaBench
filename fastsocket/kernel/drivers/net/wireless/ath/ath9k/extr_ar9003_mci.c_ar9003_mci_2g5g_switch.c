
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int config; scalar_t__ is_2g; int update_2g5g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL ;
 int AR_MCI_TX_CTRL ;
 int AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE ;
 int AR_PHY_GLB_CONTROL ;
 int AR_SELFGEN_MASK ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 int ATH_MCI_CONFIG_DISABLE_OSLA ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9003_mci_osla_setup (struct ath_hw*,int) ;
 int ar9003_mci_send_2g5g_status (struct ath_hw*,int) ;
 int ar9003_mci_send_lna_take (struct ath_hw*,int) ;
 int ar9003_mci_send_lna_transfer (struct ath_hw*,int) ;
 int udelay (int) ;

void ar9003_mci_2g5g_switch(struct ath_hw *ah, bool force)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 if (!mci->update_2g5g && !force)
  return;

 if (mci->is_2g) {
  ar9003_mci_send_2g5g_status(ah, 1);
  ar9003_mci_send_lna_transfer(ah, 1);
  udelay(5);

  REG_CLR_BIT(ah, AR_MCI_TX_CTRL,
       AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);
  REG_CLR_BIT(ah, AR_PHY_GLB_CONTROL,
       AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);

  if (!(mci->config & ATH_MCI_CONFIG_DISABLE_OSLA))
   ar9003_mci_osla_setup(ah, 1);

  if (AR_SREV_9462(ah))
   REG_WRITE(ah, AR_SELFGEN_MASK, 0x02);
 } else {
  ar9003_mci_send_lna_take(ah, 1);
  udelay(5);

  REG_SET_BIT(ah, AR_MCI_TX_CTRL,
       AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);
  REG_SET_BIT(ah, AR_PHY_GLB_CONTROL,
       AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);

  ar9003_mci_osla_setup(ah, 0);
  ar9003_mci_send_2g5g_status(ah, 1);
 }
}
