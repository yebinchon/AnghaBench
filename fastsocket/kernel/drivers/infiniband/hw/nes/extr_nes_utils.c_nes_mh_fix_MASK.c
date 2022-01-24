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
typedef  int u32 ;
struct nes_vnic {int* qp_nic_index; } ;
struct nes_device {int last_used_chunks_tx; struct nes_adapter* nesadapter; scalar_t__ regs; int /*<<< orphan*/  mac_pause_frames_sent; int /*<<< orphan*/  last_mac_tx_pauses; scalar_t__* netdev; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct nes_adapter {scalar_t__* mac_sw_state; TYPE_1__ mh_timer; scalar_t__ OneG_Mode; int /*<<< orphan*/  phy_lock; scalar_t__* mac_link_down; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NES_DBG_HW ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_BYPASS0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_CDR_CONTROL0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_COMMON_CONTROL0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_COMMON_STATUS0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_LOOPBACK_CONTROL0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_RX_EQ_CONTROL0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_RX_EQ_STATUS0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_RX_MODE0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_RX_SIGDET0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_TX_DRIVE0 ; 
 int /*<<< orphan*/  NES_IDX_ETH_SERDES_TX_EMP0 ; 
 int /*<<< orphan*/  NES_IDX_MAC_EXACT_MATCH_BOTTOM ; 
 int /*<<< orphan*/  NES_IDX_MAC_RX_CONFIG ; 
 int /*<<< orphan*/  NES_IDX_MAC_RX_CONTROL ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_CONFIG ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_CONTROL ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_FRAMES_HIGH ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_FRAMES_LOW ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_PAUSE_FRAMES ; 
 int /*<<< orphan*/  NES_IDX_MAC_TX_PAUSE_QUANTA ; 
 int /*<<< orphan*/  NES_IDX_MPP_DEBUG ; 
 int /*<<< orphan*/  NES_IDX_USED_CHUNKS_TX ; 
 scalar_t__ NES_MAC_SW_IDLE ; 
 scalar_t__ NES_MAC_SW_MH ; 
 scalar_t__ NES_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mh_detected ; 
 int /*<<< orphan*/  mh_pauses_sent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct nes_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_device*,int /*<<< orphan*/ ,int) ; 
 struct nes_vnic* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(unsigned long parm)
{
	unsigned long flags;
	struct nes_device *nesdev = (struct nes_device *)parm;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	struct nes_vnic *nesvnic;
	u32 used_chunks_tx;
	u32 temp_used_chunks_tx;
	u32 temp_last_used_chunks_tx;
	u32 used_chunks_mask;
	u32 mac_tx_frames_low;
	u32 mac_tx_frames_high;
	u32 mac_tx_pauses;
	u32 serdes_status;
	u32 reset_value;
	u32 tx_control;
	u32 tx_config;
	u32 tx_pause_quanta;
	u32 rx_control;
	u32 rx_config;
	u32 mac_exact_match;
	u32 mpp_debug;
	u32 i=0;
	u32 chunks_tx_progress = 0;

	FUNC8(&nesadapter->phy_lock, flags);
	if ((nesadapter->mac_sw_state[0] != NES_MAC_SW_IDLE) || (nesadapter->mac_link_down[0])) {
		FUNC9(&nesadapter->phy_lock, flags);
		goto no_mh_work;
	}
	nesadapter->mac_sw_state[0] = NES_MAC_SW_MH;
	FUNC9(&nesadapter->phy_lock, flags);
	do {
		mac_tx_frames_low = FUNC4(nesdev, NES_IDX_MAC_TX_FRAMES_LOW);
		mac_tx_frames_high = FUNC4(nesdev, NES_IDX_MAC_TX_FRAMES_HIGH);
		mac_tx_pauses = FUNC4(nesdev, NES_IDX_MAC_TX_PAUSE_FRAMES);
		used_chunks_tx = FUNC4(nesdev, NES_IDX_USED_CHUNKS_TX);
		nesdev->mac_pause_frames_sent += mac_tx_pauses;
		used_chunks_mask = 0;
		temp_used_chunks_tx = used_chunks_tx;
		temp_last_used_chunks_tx = nesdev->last_used_chunks_tx;

		if (nesdev->netdev[0]) {
			nesvnic = FUNC7(nesdev->netdev[0]);
		} else {
			break;
		}

		for (i=0; i<4; i++) {
			used_chunks_mask <<= 8;
			if (nesvnic->qp_nic_index[i] != 0xff) {
				used_chunks_mask |= 0xff;
				if ((temp_used_chunks_tx&0xff)<(temp_last_used_chunks_tx&0xff)) {
					chunks_tx_progress = 1;
				}
			}
			temp_used_chunks_tx >>= 8;
			temp_last_used_chunks_tx >>= 8;
		}
		if ((mac_tx_frames_low) || (mac_tx_frames_high) ||
			(!(used_chunks_tx&used_chunks_mask)) ||
			(!(nesdev->last_used_chunks_tx&used_chunks_mask)) ||
			(chunks_tx_progress) ) {
			nesdev->last_used_chunks_tx = used_chunks_tx;
			break;
		}
		nesdev->last_used_chunks_tx = used_chunks_tx;
		FUNC1();

		FUNC6(nesdev, NES_IDX_MAC_TX_CONTROL, 0x00000005);
		mh_pauses_sent++;
		mac_tx_pauses = FUNC4(nesdev, NES_IDX_MAC_TX_PAUSE_FRAMES);
		if (mac_tx_pauses) {
			nesdev->mac_pause_frames_sent += mac_tx_pauses;
			break;
		}

		tx_control = FUNC4(nesdev, NES_IDX_MAC_TX_CONTROL);
		tx_config = FUNC4(nesdev, NES_IDX_MAC_TX_CONFIG);
		tx_pause_quanta = FUNC4(nesdev, NES_IDX_MAC_TX_PAUSE_QUANTA);
		rx_control = FUNC4(nesdev, NES_IDX_MAC_RX_CONTROL);
		rx_config = FUNC4(nesdev, NES_IDX_MAC_RX_CONFIG);
		mac_exact_match = FUNC4(nesdev, NES_IDX_MAC_EXACT_MATCH_BOTTOM);
		mpp_debug = FUNC4(nesdev, NES_IDX_MPP_DEBUG);

		/* one last ditch effort to avoid a false positive */
		mac_tx_pauses = FUNC4(nesdev, NES_IDX_MAC_TX_PAUSE_FRAMES);
		if (mac_tx_pauses) {
			nesdev->last_mac_tx_pauses = nesdev->mac_pause_frames_sent;
			FUNC2(NES_DBG_HW, "failsafe caught slow outbound pause\n");
			break;
		}
		mh_detected++;

		FUNC6(nesdev, NES_IDX_MAC_TX_CONTROL, 0x00000000);
		FUNC6(nesdev, NES_IDX_MAC_TX_CONFIG, 0x00000000);
		reset_value = FUNC3(nesdev->regs+NES_SOFTWARE_RESET);

		FUNC5(nesdev->regs+NES_SOFTWARE_RESET, reset_value | 0x0000001d);

		while (((FUNC3(nesdev->regs+NES_SOFTWARE_RESET)
				& 0x00000040) != 0x00000040) && (i++ < 5000)) {
			/* mdelay(1); */
		}

		FUNC6(nesdev, NES_IDX_ETH_SERDES_COMMON_CONTROL0, 0x00000008);
		serdes_status = FUNC4(nesdev, NES_IDX_ETH_SERDES_COMMON_STATUS0);

		FUNC6(nesdev, NES_IDX_ETH_SERDES_TX_EMP0, 0x000bdef7);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_TX_DRIVE0, 0x9ce73000);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_RX_MODE0, 0x0ff00000);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_RX_SIGDET0, 0x00000000);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_BYPASS0, 0x00000000);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_LOOPBACK_CONTROL0, 0x00000000);
		if (nesadapter->OneG_Mode) {
			FUNC6(nesdev, NES_IDX_ETH_SERDES_RX_EQ_CONTROL0, 0xf0182222);
		} else {
			FUNC6(nesdev, NES_IDX_ETH_SERDES_RX_EQ_CONTROL0, 0xf0042222);
		}
		serdes_status = FUNC4(nesdev, NES_IDX_ETH_SERDES_RX_EQ_STATUS0);
		FUNC6(nesdev, NES_IDX_ETH_SERDES_CDR_CONTROL0, 0x000000ff);

		FUNC6(nesdev, NES_IDX_MAC_TX_CONTROL, tx_control);
		FUNC6(nesdev, NES_IDX_MAC_TX_CONFIG, tx_config);
		FUNC6(nesdev, NES_IDX_MAC_TX_PAUSE_QUANTA, tx_pause_quanta);
		FUNC6(nesdev, NES_IDX_MAC_RX_CONTROL, rx_control);
		FUNC6(nesdev, NES_IDX_MAC_RX_CONFIG, rx_config);
		FUNC6(nesdev, NES_IDX_MAC_EXACT_MATCH_BOTTOM, mac_exact_match);
		FUNC6(nesdev, NES_IDX_MPP_DEBUG, mpp_debug);

	} while (0);

	nesadapter->mac_sw_state[0] = NES_MAC_SW_IDLE;
no_mh_work:
	nesdev->nesadapter->mh_timer.expires = jiffies + (HZ/5);
	FUNC0(&nesdev->nesadapter->mh_timer);
}