
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int mci; } ;
struct ath_softc {int mci_work; int hw; TYPE_1__ btcoex; struct ath_hw* sc_ah; } ;
struct ath_mci_profile_status {int is_link; int conn_handle; int is_critical; } ;
struct ath_mci_profile_info {int start; int type; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int MCI ;


 int MCI_GPM_COEX_B_MAJOR_VERSION ;
 int MCI_GPM_COEX_B_MINOR_VERSION ;
 int MCI_GPM_COEX_B_PROFILE_TYPE ;
 int MCI_GPM_COEX_B_STATUS_LINKID ;
 int MCI_GPM_COEX_B_STATUS_STATE ;
 int MCI_GPM_COEX_B_STATUS_TYPE ;
 int MCI_GPM_COEX_PROFILE_MAX ;
 int MCI_GPM_COEX_PROFILE_UNKNOWN ;



 int MCI_STATE_ENABLE ;
 int MCI_STATE_NEED_FLUSH_BT_INFO ;
 int MCI_STATE_SEND_STATUS_QUERY ;
 int MCI_STATE_SEND_WLAN_COEX_VERSION ;
 int ar9003_mci_send_wlan_channels (struct ath_hw*) ;
 int ar9003_mci_set_bt_version (struct ath_hw*,int,int) ;
 scalar_t__ ar9003_mci_state (struct ath_hw*,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_mci_flush_profile (int *) ;
 int ath_mci_process_profile (struct ath_softc*,struct ath_mci_profile_info*) ;
 int ath_mci_process_status (struct ath_softc*,struct ath_mci_profile_status*) ;
 int ieee80211_queue_work (int ,int *) ;
 int memcpy (struct ath_mci_profile_info*,int*,int) ;

__attribute__((used)) static void ath_mci_msg(struct ath_softc *sc, u8 opcode, u8 *rx_payload)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_mci_profile_info profile_info;
 struct ath_mci_profile_status profile_status;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 u8 major, minor, update_scheme = 0;
 u32 seq_num;

 if (ar9003_mci_state(ah, MCI_STATE_NEED_FLUSH_BT_INFO) &&
     ar9003_mci_state(ah, MCI_STATE_ENABLE)) {
  ath_dbg(common, MCI, "(MCI) Need to flush BT profiles\n");
  ath_mci_flush_profile(&sc->btcoex.mci);
  ar9003_mci_state(ah, MCI_STATE_SEND_STATUS_QUERY);
 }

 switch (opcode) {
 case 129:
  ar9003_mci_state(ah, MCI_STATE_SEND_WLAN_COEX_VERSION);
  break;
 case 128:
  major = *(rx_payload + MCI_GPM_COEX_B_MAJOR_VERSION);
  minor = *(rx_payload + MCI_GPM_COEX_B_MINOR_VERSION);
  ar9003_mci_set_bt_version(ah, major, minor);
  break;
 case 130:
  ar9003_mci_send_wlan_channels(ah);
  break;
 case 132:
  memcpy(&profile_info,
         (rx_payload + MCI_GPM_COEX_B_PROFILE_TYPE), 10);

  if ((profile_info.type == MCI_GPM_COEX_PROFILE_UNKNOWN) ||
      (profile_info.type >= MCI_GPM_COEX_PROFILE_MAX)) {
   ath_dbg(common, MCI,
    "Illegal profile type = %d, state = %d\n",
    profile_info.type,
    profile_info.start);
   break;
  }

  update_scheme += ath_mci_process_profile(sc, &profile_info);
  break;
 case 131:
  profile_status.is_link = *(rx_payload +
        MCI_GPM_COEX_B_STATUS_TYPE);
  profile_status.conn_handle = *(rx_payload +
            MCI_GPM_COEX_B_STATUS_LINKID);
  profile_status.is_critical = *(rx_payload +
            MCI_GPM_COEX_B_STATUS_STATE);

  seq_num = *((u32 *)(rx_payload + 12));
  ath_dbg(common, MCI,
   "BT_Status_Update: is_link=%d, linkId=%d, state=%d, SEQ=%u\n",
   profile_status.is_link, profile_status.conn_handle,
   profile_status.is_critical, seq_num);

  update_scheme += ath_mci_process_status(sc, &profile_status);
  break;
 default:
  ath_dbg(common, MCI, "Unknown GPM COEX message = 0x%02x\n", opcode);
  break;
 }
 if (update_scheme)
  ieee80211_queue_work(sc->hw, &sc->mci_work);
}
