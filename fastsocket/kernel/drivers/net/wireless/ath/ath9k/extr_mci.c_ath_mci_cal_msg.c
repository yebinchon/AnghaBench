
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath9k_hw_mci {int bt_state; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int MCI ;
 int MCI_BT_AWAKE ;
 int MCI_BT_CAL_START ;
 int MCI_GPM ;


 int MCI_GPM_SET_CAL_TYPE (int *,int ) ;
 int MCI_GPM_WLAN_CAL_DONE ;
 int RESET_TYPE_MCI ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_queue_reset (struct ath_softc*,int ) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

__attribute__((used)) static void ath_mci_cal_msg(struct ath_softc *sc, u8 opcode, u8 *rx_payload)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};

 switch (opcode) {
 case 128:
  if (mci_hw->bt_state == MCI_BT_AWAKE) {
   mci_hw->bt_state = MCI_BT_CAL_START;
   ath9k_queue_reset(sc, RESET_TYPE_MCI);
  }
  ath_dbg(common, MCI, "MCI State : %d\n", mci_hw->bt_state);
  break;
 case 129:
  MCI_GPM_SET_CAL_TYPE(payload, MCI_GPM_WLAN_CAL_DONE);
  ar9003_mci_send_message(sc->sc_ah, MCI_GPM, 0, payload,
     16, 0, 1);
  break;
 default:
  ath_dbg(common, MCI, "Unknown GPM CAL message\n");
  break;
 }
}
