
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ath9k_hw_mci {int bt_version_known; int wlan_channels_update; int query_bt; scalar_t__ bt_ver_minor; scalar_t__ bt_ver_major; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int MCI ;
 scalar_t__ MCI_GPM_COEX_AGENT ;


 int MCI_GPM_COEX_B_MAJOR_VERSION ;
 int MCI_GPM_COEX_B_MINOR_VERSION ;
 int MCI_GPM_COEX_B_WLAN_BITMAP ;



 int ar9003_mci_send_coex_version_response (struct ath_hw*,int) ;
 int ar9003_mci_send_coex_wlan_channels (struct ath_hw*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

__attribute__((used)) static void ar9003_mci_process_gpm_extra(struct ath_hw *ah, u8 gpm_type,
      u8 gpm_opcode, u32 *p_gpm)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u8 *p_data = (u8 *) p_gpm;

 if (gpm_type != MCI_GPM_COEX_AGENT)
  return;

 switch (gpm_opcode) {
 case 129:
  ath_dbg(common, MCI, "MCI Recv GPM COEX Version Query\n");
  ar9003_mci_send_coex_version_response(ah, 1);
  break;
 case 128:
  ath_dbg(common, MCI, "MCI Recv GPM COEX Version Response\n");
  mci->bt_ver_major =
   *(p_data + MCI_GPM_COEX_B_MAJOR_VERSION);
  mci->bt_ver_minor =
   *(p_data + MCI_GPM_COEX_B_MINOR_VERSION);
  mci->bt_version_known = 1;
  ath_dbg(common, MCI, "MCI BT Coex version: %d.%d\n",
   mci->bt_ver_major, mci->bt_ver_minor);
  break;
 case 130:
  ath_dbg(common, MCI,
   "MCI Recv GPM COEX Status Query = 0x%02X\n",
   *(p_data + MCI_GPM_COEX_B_WLAN_BITMAP));
  mci->wlan_channels_update = 1;
  ar9003_mci_send_coex_wlan_channels(ah, 1);
  break;
 case 132:
  mci->query_bt = 1;
  ath_dbg(common, MCI, "MCI Recv GPM COEX BT_Profile_Info\n");
  break;
 case 131:
  mci->query_bt = 1;
  ath_dbg(common, MCI,
   "MCI Recv GPM COEX BT_Status_Update SEQ=%d (drop&query)\n",
   *(p_gpm + 3));
  break;
 default:
  break;
 }
}
