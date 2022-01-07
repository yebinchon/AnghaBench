
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ath9k_hw_mci {int update_2g5g; int wlan_channels_update; int unhalt_bt_gpm; int halted_bt_gpm; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 scalar_t__ MCI_GPM ;
 scalar_t__ MCI_GPM_COEX_AGENT ;
 scalar_t__ MCI_GPM_COEX_BT_FLAGS_READ ;
 scalar_t__ MCI_GPM_COEX_BT_GPM_HALT ;
 scalar_t__ MCI_GPM_COEX_BT_GPM_UNHALT ;

 int MCI_GPM_COEX_B_BT_FLAGS_OP ;
 int MCI_GPM_COEX_B_HALT_STATE ;


 scalar_t__ MCI_GPM_OPCODE (int *) ;
 scalar_t__ MCI_GPM_TYPE (int *) ;

__attribute__((used)) static void ar9003_mci_queue_unsent_gpm(struct ath_hw *ah, u8 header,
     u32 *payload, bool queue)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u8 type, opcode;


 if (header != MCI_GPM)
  return;

 type = MCI_GPM_TYPE(payload);
 opcode = MCI_GPM_OPCODE(payload);

 if (type != MCI_GPM_COEX_AGENT)
  return;

 switch (opcode) {
 case 130:
  if (*(((u8 *)payload) + MCI_GPM_COEX_B_BT_FLAGS_OP) ==
      MCI_GPM_COEX_BT_FLAGS_READ)
   break;

  mci->update_2g5g = queue;

  break;
 case 128:
  mci->wlan_channels_update = queue;
  break;
 case 129:
  if (*(((u8 *)payload) + MCI_GPM_COEX_B_HALT_STATE) ==
      MCI_GPM_COEX_BT_GPM_UNHALT) {
   mci->unhalt_bt_gpm = queue;

   if (!queue)
    mci->halted_bt_gpm = 0;
  }

  if (*(((u8 *)payload) + MCI_GPM_COEX_B_HALT_STATE) ==
    MCI_GPM_COEX_BT_GPM_HALT) {

   mci->halted_bt_gpm = !queue;
  }

  break;
 default:
  break;
 }
}
