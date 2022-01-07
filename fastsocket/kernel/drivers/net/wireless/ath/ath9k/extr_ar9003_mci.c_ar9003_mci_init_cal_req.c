
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; int config; int wlan_cal_seq; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int ATH_MCI_CONFIG_DISABLE_MCI_CAL ;
 int MCI ;
 scalar_t__ MCI_BT_AWAKE ;
 int MCI_GPM ;
 int MCI_GPM_BT_CAL_GRANT ;
 int MCI_GPM_SET_CAL_TYPE (scalar_t__*,int ) ;
 int MCI_GPM_WLAN_CAL_REQ ;
 size_t MCI_GPM_WLAN_CAL_W_SEQUENCE ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,scalar_t__*,int,int,int) ;
 scalar_t__ ar9003_mci_wait_for_gpm (struct ath_hw*,int ,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ar9003_mci_init_cal_req(struct ath_hw *ah, bool *is_reusable)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
 u32 pld[4] = {0, 0, 0, 0};

 if ((mci_hw->bt_state != MCI_BT_AWAKE) ||
     (mci_hw->config & ATH_MCI_CONFIG_DISABLE_MCI_CAL))
  return;

 MCI_GPM_SET_CAL_TYPE(pld, MCI_GPM_WLAN_CAL_REQ);
 pld[MCI_GPM_WLAN_CAL_W_SEQUENCE] = mci_hw->wlan_cal_seq++;

 ar9003_mci_send_message(ah, MCI_GPM, 0, pld, 16, 1, 0);

 if (ar9003_mci_wait_for_gpm(ah, MCI_GPM_BT_CAL_GRANT, 0, 50000)) {
  ath_dbg(common, MCI, "MCI BT_CAL_GRANT received\n");
 } else {
  *is_reusable = 0;
  ath_dbg(common, MCI, "MCI BT_CAL_GRANT not received\n");
 }
}
