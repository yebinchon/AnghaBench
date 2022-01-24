#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ active_flowctrl; scalar_t__ active_speed; scalar_t__ active_duplex; scalar_t__ autoneg; scalar_t__ rmt_adv; } ;
struct tg3 {int mac_mode; scalar_t__ phy_id; scalar_t__ serdes_counter; int led_ctrl; TYPE_3__ link_config; TYPE_2__* napi; scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__* hw_status; } ;
struct TYPE_4__ {int status; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  HW_AUTONEG ; 
 int /*<<< orphan*/  INIT_COMPLETE ; 
 int LED_CTRL_1000MBPS_ON ; 
 int LED_CTRL_LNKLED_OVERRIDE ; 
 int LED_CTRL_TRAFFIC_OVERRIDE ; 
 int /*<<< orphan*/  MAC_EVENT ; 
 scalar_t__ MAC_EVENT_LNKSTATE_CHANGED ; 
 int /*<<< orphan*/  MAC_LED_CTRL ; 
 int /*<<< orphan*/  MAC_MODE ; 
 int MAC_MODE_HALF_DUPLEX ; 
 int MAC_MODE_PORT_MODE_MASK ; 
 int MAC_MODE_PORT_MODE_TBI ; 
 scalar_t__ MAC_MODE_SEND_CONFIGS ; 
 int /*<<< orphan*/  MAC_STATUS ; 
 scalar_t__ MAC_STATUS_CFG_CHANGED ; 
 scalar_t__ MAC_STATUS_LNKSTATE_CHANGED ; 
 scalar_t__ MAC_STATUS_PCS_SYNCED ; 
 scalar_t__ MAC_STATUS_RCVD_CFG ; 
 scalar_t__ MAC_STATUS_SIGNAL_DET ; 
 scalar_t__ MAC_STATUS_SYNC_CHANGED ; 
 int /*<<< orphan*/  MAC_TX_AUTO_NEG ; 
 int SD_STATUS_LINK_CHG ; 
 int SD_STATUS_UPDATED ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_UNKNOWN ; 
 scalar_t__ TG3_PHY_ID_BCM8002 ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 int FUNC3 (struct tg3*,scalar_t__) ; 
 int FUNC4 (struct tg3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct tg3 *tp, bool force_reset)
{
	u32 orig_pause_cfg;
	u16 orig_active_speed;
	u8 orig_active_duplex;
	u32 mac_status;
	bool current_link_up;
	int i;

	orig_pause_cfg = tp->link_config.active_flowctrl;
	orig_active_speed = tp->link_config.active_speed;
	orig_active_duplex = tp->link_config.active_duplex;

	if (!FUNC0(tp, HW_AUTONEG) &&
	    tp->link_up &&
	    FUNC0(tp, INIT_COMPLETE)) {
		mac_status = FUNC6(MAC_STATUS);
		mac_status &= (MAC_STATUS_PCS_SYNCED |
			       MAC_STATUS_SIGNAL_DET |
			       MAC_STATUS_CFG_CHANGED |
			       MAC_STATUS_RCVD_CFG);
		if (mac_status == (MAC_STATUS_PCS_SYNCED |
				   MAC_STATUS_SIGNAL_DET)) {
			FUNC8(MAC_STATUS, (MAC_STATUS_SYNC_CHANGED |
					    MAC_STATUS_CFG_CHANGED));
			return 0;
		}
	}

	FUNC8(MAC_TX_AUTO_NEG, 0);

	tp->mac_mode &= ~(MAC_MODE_PORT_MODE_MASK | MAC_MODE_HALF_DUPLEX);
	tp->mac_mode |= MAC_MODE_PORT_MODE_TBI;
	FUNC8(MAC_MODE, tp->mac_mode);
	FUNC9(40);

	if (tp->phy_id == TG3_PHY_ID_BCM8002)
		FUNC1(tp);

	/* Enable link change event even when serdes polling.  */
	FUNC8(MAC_EVENT, MAC_EVENT_LNKSTATE_CHANGED);
	FUNC9(40);

	current_link_up = false;
	tp->link_config.rmt_adv = 0;
	mac_status = FUNC6(MAC_STATUS);

	if (FUNC0(tp, HW_AUTONEG))
		current_link_up = FUNC4(tp, mac_status);
	else
		current_link_up = FUNC3(tp, mac_status);

	tp->napi[0].hw_status->status =
		(SD_STATUS_UPDATED |
		 (tp->napi[0].hw_status->status & ~SD_STATUS_LINK_CHG));

	for (i = 0; i < 100; i++) {
		FUNC8(MAC_STATUS, (MAC_STATUS_SYNC_CHANGED |
				    MAC_STATUS_CFG_CHANGED));
		FUNC9(5);
		if ((FUNC6(MAC_STATUS) & (MAC_STATUS_SYNC_CHANGED |
					 MAC_STATUS_CFG_CHANGED |
					 MAC_STATUS_LNKSTATE_CHANGED)) == 0)
			break;
	}

	mac_status = FUNC6(MAC_STATUS);
	if ((mac_status & MAC_STATUS_PCS_SYNCED) == 0) {
		current_link_up = false;
		if (tp->link_config.autoneg == AUTONEG_ENABLE &&
		    tp->serdes_counter == 0) {
			FUNC8(MAC_MODE, (tp->mac_mode |
					  MAC_MODE_SEND_CONFIGS));
			FUNC9(1);
			FUNC8(MAC_MODE, tp->mac_mode);
		}
	}

	if (current_link_up) {
		tp->link_config.active_speed = SPEED_1000;
		tp->link_config.active_duplex = DUPLEX_FULL;
		FUNC7(MAC_LED_CTRL, (tp->led_ctrl |
				    LED_CTRL_LNKLED_OVERRIDE |
				    LED_CTRL_1000MBPS_ON));
	} else {
		tp->link_config.active_speed = SPEED_UNKNOWN;
		tp->link_config.active_duplex = DUPLEX_UNKNOWN;
		FUNC7(MAC_LED_CTRL, (tp->led_ctrl |
				    LED_CTRL_LNKLED_OVERRIDE |
				    LED_CTRL_TRAFFIC_OVERRIDE));
	}

	if (!FUNC5(tp, current_link_up)) {
		u32 now_pause_cfg = tp->link_config.active_flowctrl;
		if (orig_pause_cfg != now_pause_cfg ||
		    orig_active_speed != tp->link_config.active_speed ||
		    orig_active_duplex != tp->link_config.active_duplex)
			FUNC2(tp);
	}

	return 0;
}