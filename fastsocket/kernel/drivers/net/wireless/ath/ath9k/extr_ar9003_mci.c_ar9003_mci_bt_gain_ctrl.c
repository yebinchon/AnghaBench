
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int is_2g; int update_2g5g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL ;
 int AR_PHY_GLB_CONTROL ;
 int MCI ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int ar9003_mci_send_2g5g_status (struct ath_hw*,int) ;
 int ar9003_mci_send_lna_take (struct ath_hw*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int udelay (int) ;

void ar9003_mci_bt_gain_ctrl(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 ath_dbg(common, MCI, "Give LNA and SPDT control to BT\n");

 ar9003_mci_send_lna_take(ah, 1);
 udelay(50);

 REG_SET_BIT(ah, AR_PHY_GLB_CONTROL, AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL);
 mci->is_2g = 0;
 mci->update_2g5g = 1;
 ar9003_mci_send_2g5g_status(ah, 1);


 mci->update_2g5g = 1;
}
