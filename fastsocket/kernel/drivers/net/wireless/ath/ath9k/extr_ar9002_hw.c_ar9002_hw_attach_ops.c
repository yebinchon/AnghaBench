
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_private_ops {int init_mode_gain_regs; } ;
struct ath_hw_ops {int config_pci_powersave; } ;
struct ath_hw {int dummy; } ;


 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int ar5008_hw_attach_phy_ops (struct ath_hw*) ;
 int ar9002_hw_attach_calib_ops (struct ath_hw*) ;
 int ar9002_hw_attach_mac_ops (struct ath_hw*) ;
 int ar9002_hw_attach_phy_ops (struct ath_hw*) ;
 int ar9002_hw_configpcipowersave ;
 int ar9002_hw_init_mode_gain_regs ;
 int ar9002_hw_init_mode_regs (struct ath_hw*) ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;

int ar9002_hw_attach_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 struct ath_hw_ops *ops = ath9k_hw_ops(ah);
 int ret;

 ret = ar9002_hw_init_mode_regs(ah);
 if (ret)
  return ret;

 priv_ops->init_mode_gain_regs = ar9002_hw_init_mode_gain_regs;

 ops->config_pci_powersave = ar9002_hw_configpcipowersave;

 ret = ar5008_hw_attach_phy_ops(ah);
 if (ret)
  return ret;

 if (AR_SREV_9280_20_OR_LATER(ah))
  ar9002_hw_attach_phy_ops(ah);

 ar9002_hw_attach_calib_ops(ah);
 ar9002_hw_attach_mac_ops(ah);
 return 0;
}
