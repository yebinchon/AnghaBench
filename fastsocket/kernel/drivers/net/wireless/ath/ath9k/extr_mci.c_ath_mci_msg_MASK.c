#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mci; } ;
struct ath_softc {int /*<<< orphan*/  mci_work; int /*<<< orphan*/  hw; TYPE_1__ btcoex; struct ath_hw* sc_ah; } ;
struct ath_mci_profile_status {int is_link; int conn_handle; int is_critical; } ;
struct ath_mci_profile_info {int /*<<< orphan*/  start; int /*<<< orphan*/  type; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCI ; 
#define  MCI_GPM_COEX_BT_PROFILE_INFO 132 
#define  MCI_GPM_COEX_BT_STATUS_UPDATE 131 
 int /*<<< orphan*/  MCI_GPM_COEX_B_MAJOR_VERSION ; 
 int /*<<< orphan*/  MCI_GPM_COEX_B_MINOR_VERSION ; 
 int /*<<< orphan*/  MCI_GPM_COEX_B_PROFILE_TYPE ; 
 int /*<<< orphan*/  MCI_GPM_COEX_B_STATUS_LINKID ; 
 int /*<<< orphan*/  MCI_GPM_COEX_B_STATUS_STATE ; 
 int /*<<< orphan*/  MCI_GPM_COEX_B_STATUS_TYPE ; 
 int /*<<< orphan*/  MCI_GPM_COEX_PROFILE_MAX ; 
 int /*<<< orphan*/  MCI_GPM_COEX_PROFILE_UNKNOWN ; 
#define  MCI_GPM_COEX_STATUS_QUERY 130 
#define  MCI_GPM_COEX_VERSION_QUERY 129 
#define  MCI_GPM_COEX_VERSION_RESPONSE 128 
 int /*<<< orphan*/  MCI_STATE_ENABLE ; 
 int /*<<< orphan*/  MCI_STATE_NEED_FLUSH_BT_INFO ; 
 int /*<<< orphan*/  MCI_STATE_SEND_STATUS_QUERY ; 
 int /*<<< orphan*/  MCI_STATE_SEND_WLAN_COEX_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,int) ; 
 scalar_t__ FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,struct ath_mci_profile_status*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_mci_profile_info*,int*,int) ; 

__attribute__((used)) static void FUNC10(struct ath_softc *sc, u8 opcode, u8 *rx_payload)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_mci_profile_info profile_info;
	struct ath_mci_profile_status profile_status;
	struct ath_common *common = FUNC3(sc->sc_ah);
	u8 major, minor, update_scheme = 0;
	u32 seq_num;

	if (FUNC2(ah, MCI_STATE_NEED_FLUSH_BT_INFO) &&
	    FUNC2(ah, MCI_STATE_ENABLE)) {
		FUNC4(common, MCI, "(MCI) Need to flush BT profiles\n");
		FUNC5(&sc->btcoex.mci);
		FUNC2(ah, MCI_STATE_SEND_STATUS_QUERY);
	}

	switch (opcode) {
	case MCI_GPM_COEX_VERSION_QUERY:
		FUNC2(ah, MCI_STATE_SEND_WLAN_COEX_VERSION);
		break;
	case MCI_GPM_COEX_VERSION_RESPONSE:
		major = *(rx_payload + MCI_GPM_COEX_B_MAJOR_VERSION);
		minor = *(rx_payload + MCI_GPM_COEX_B_MINOR_VERSION);
		FUNC1(ah, major, minor);
		break;
	case MCI_GPM_COEX_STATUS_QUERY:
		FUNC0(ah);
		break;
	case MCI_GPM_COEX_BT_PROFILE_INFO:
		FUNC9(&profile_info,
		       (rx_payload + MCI_GPM_COEX_B_PROFILE_TYPE), 10);

		if ((profile_info.type == MCI_GPM_COEX_PROFILE_UNKNOWN) ||
		    (profile_info.type >= MCI_GPM_COEX_PROFILE_MAX)) {
			FUNC4(common, MCI,
				"Illegal profile type = %d, state = %d\n",
				profile_info.type,
				profile_info.start);
			break;
		}

		update_scheme += FUNC6(sc, &profile_info);
		break;
	case MCI_GPM_COEX_BT_STATUS_UPDATE:
		profile_status.is_link = *(rx_payload +
					   MCI_GPM_COEX_B_STATUS_TYPE);
		profile_status.conn_handle = *(rx_payload +
					       MCI_GPM_COEX_B_STATUS_LINKID);
		profile_status.is_critical = *(rx_payload +
					       MCI_GPM_COEX_B_STATUS_STATE);

		seq_num = *((u32 *)(rx_payload + 12));
		FUNC4(common, MCI,
			"BT_Status_Update: is_link=%d, linkId=%d, state=%d, SEQ=%u\n",
			profile_status.is_link, profile_status.conn_handle,
			profile_status.is_critical, seq_num);

		update_scheme += FUNC7(sc, &profile_status);
		break;
	default:
		FUNC4(common, MCI, "Unknown GPM COEX message = 0x%02x\n", opcode);
		break;
	}
	if (update_scheme)
		FUNC8(sc->hw, &sc->mci_work);
}