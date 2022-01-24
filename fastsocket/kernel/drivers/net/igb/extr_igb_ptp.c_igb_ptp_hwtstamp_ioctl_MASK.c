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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_ETQF_1588 ; 
 int E1000_ETQF_FILTER_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int E1000_FTQF_1588_TIME_STAMP ; 
 int E1000_FTQF_MASK ; 
 int E1000_FTQF_MASK_PROTO_BP ; 
 int E1000_FTQF_MASK_SOURCE_PORT_BP ; 
 int E1000_FTQF_VF_BP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int E1000_IMIREXT_CTRL_BP ; 
 int E1000_IMIREXT_SIZE_BP ; 
 int /*<<< orphan*/  E1000_RXPBS ; 
 int E1000_RXPBS_CFG_TS_EN ; 
 int /*<<< orphan*/  E1000_RXSTMPH ; 
 int /*<<< orphan*/  E1000_RXSTMPL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  E1000_TSYNCRXCFG ; 
 int E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE ; 
 int E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE ; 
 int /*<<< orphan*/  E1000_TSYNCRXCTL ; 
 int E1000_TSYNCRXCTL_ENABLED ; 
 int E1000_TSYNCRXCTL_TYPE_ALL ; 
 int E1000_TSYNCRXCTL_TYPE_EVENT_V2 ; 
 int E1000_TSYNCRXCTL_TYPE_L4_V1 ; 
 int E1000_TSYNCRXCTL_TYPE_MASK ; 
 int /*<<< orphan*/  E1000_TSYNCTXCTL ; 
 int E1000_TSYNCTXCTL_ENABLED ; 
 int /*<<< orphan*/  E1000_TXSTMPH ; 
 int /*<<< orphan*/  E1000_TXSTMPL ; 
 int EFAULT ; 
 int EINVAL ; 
 int ERANGE ; 
 int ETH_P_1588 ; 
#define  HWTSTAMP_FILTER_ALL 143 
#define  HWTSTAMP_FILTER_NONE 142 
#define  HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ 141 
#define  HWTSTAMP_FILTER_PTP_V1_L4_EVENT 140 
#define  HWTSTAMP_FILTER_PTP_V1_L4_SYNC 139 
#define  HWTSTAMP_FILTER_PTP_V2_DELAY_REQ 138 
#define  HWTSTAMP_FILTER_PTP_V2_EVENT 137 
#define  HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ 136 
#define  HWTSTAMP_FILTER_PTP_V2_L2_EVENT 135 
#define  HWTSTAMP_FILTER_PTP_V2_L2_SYNC 134 
#define  HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ 133 
#define  HWTSTAMP_FILTER_PTP_V2_L4_EVENT 132 
#define  HWTSTAMP_FILTER_PTP_V2_L4_SYNC 131 
#define  HWTSTAMP_FILTER_PTP_V2_SYNC 130 
#define  HWTSTAMP_TX_OFF 129 
#define  HWTSTAMP_TX_ON 128 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  PTP_EV_PORT ; 
 scalar_t__ FUNC5 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 scalar_t__ e1000_82575 ; 
 scalar_t__ e1000_82576 ; 
 scalar_t__ e1000_82580 ; 
 scalar_t__ e1000_i210 ; 
 scalar_t__ e1000_i211 ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC8 (struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(struct net_device *netdev,
			   struct ifreq *ifr, int cmd)
{
	struct igb_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct hwtstamp_config config;
	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
	u32 tsync_rx_ctl = E1000_TSYNCRXCTL_ENABLED;
	u32 tsync_rx_cfg = 0;
	bool is_l4 = false;
	bool is_l2 = false;
	u32 regval;

	if (FUNC5(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	/* reserved for future extensions */
	if (config.flags)
		return -EINVAL;

	switch (config.tx_type) {
	case HWTSTAMP_TX_OFF:
		tsync_tx_ctl = 0;
	case HWTSTAMP_TX_ON:
		break;
	default:
		return -ERANGE;
	}

	switch (config.rx_filter) {
	case HWTSTAMP_FILTER_NONE:
		tsync_rx_ctl = 0;
		break;
	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
		tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L4_V1;
		tsync_rx_cfg = E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE;
		is_l4 = true;
		break;
	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
		tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L4_V1;
		tsync_rx_cfg = E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE;
		is_l4 = true;
		break;
	case HWTSTAMP_FILTER_PTP_V2_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
		tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_EVENT_V2;
		config.rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
		is_l2 = true;
		is_l4 = true;
		break;
	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
	case HWTSTAMP_FILTER_ALL:
		/* 82576 cannot timestamp all packets, which it needs to do to
		 * support both V1 Sync and Delay_Req messages
		 */
		if (hw->mac.type != e1000_82576) {
			tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_ALL;
			config.rx_filter = HWTSTAMP_FILTER_ALL;
			break;
		}
		/* fall through */
	default:
		config.rx_filter = HWTSTAMP_FILTER_NONE;
		return -ERANGE;
	}

	if (hw->mac.type == e1000_82575) {
		if (tsync_rx_ctl | tsync_tx_ctl)
			return -EINVAL;
		return 0;
	}

	/* Per-packet timestamping only works if all packets are
	 * timestamped, so enable timestamping in all packets as
	 * long as one Rx filter was configured.
	 */
	if ((hw->mac.type >= e1000_82580) && tsync_rx_ctl) {
		tsync_rx_ctl = E1000_TSYNCRXCTL_ENABLED;
		tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_ALL;
		config.rx_filter = HWTSTAMP_FILTER_ALL;
		is_l2 = true;
		is_l4 = true;

		if ((hw->mac.type == e1000_i210) ||
		    (hw->mac.type == e1000_i211)) {
			regval = FUNC9(E1000_RXPBS);
			regval |= E1000_RXPBS_CFG_TS_EN;
			FUNC10(E1000_RXPBS, regval);
		}
	}

	/* enable/disable TX */
	regval = FUNC9(E1000_TSYNCTXCTL);
	regval &= ~E1000_TSYNCTXCTL_ENABLED;
	regval |= tsync_tx_ctl;
	FUNC10(E1000_TSYNCTXCTL, regval);

	/* enable/disable RX */
	regval = FUNC9(E1000_TSYNCRXCTL);
	regval &= ~(E1000_TSYNCRXCTL_ENABLED | E1000_TSYNCRXCTL_TYPE_MASK);
	regval |= tsync_rx_ctl;
	FUNC10(E1000_TSYNCRXCTL, regval);

	/* define which PTP packets are time stamped */
	FUNC10(E1000_TSYNCRXCFG, tsync_rx_cfg);

	/* define ethertype filter for timestamped packets */
	if (is_l2)
		FUNC10(FUNC0(3),
		     (E1000_ETQF_FILTER_ENABLE | /* enable filter */
		      E1000_ETQF_1588 | /* enable timestamping */
		      ETH_P_1588));     /* 1588 eth protocol type */
	else
		FUNC10(FUNC0(3), 0);

	/* L4 Queue Filter[3]: filter by destination port and protocol */
	if (is_l4) {
		u32 ftqf = (IPPROTO_UDP /* UDP */
			| E1000_FTQF_VF_BP /* VF not compared */
			| E1000_FTQF_1588_TIME_STAMP /* Enable Timestamping */
			| E1000_FTQF_MASK); /* mask all inputs */
		ftqf &= ~E1000_FTQF_MASK_PROTO_BP; /* enable protocol check */

		FUNC10(FUNC2(3), FUNC7(PTP_EV_PORT));
		FUNC10(FUNC3(3),
		     (E1000_IMIREXT_SIZE_BP | E1000_IMIREXT_CTRL_BP));
		if (hw->mac.type == e1000_82576) {
			/* enable source port check */
			FUNC10(FUNC4(3), FUNC7(PTP_EV_PORT));
			ftqf &= ~E1000_FTQF_MASK_SOURCE_PORT_BP;
		}
		FUNC10(FUNC1(3), ftqf);
	} else {
		FUNC10(FUNC1(3), E1000_FTQF_MASK);
	}
	FUNC11();

	/* clear TX/RX time stamp registers, just to be sure */
	regval = FUNC9(E1000_TXSTMPL);
	regval = FUNC9(E1000_TXSTMPH);
	regval = FUNC9(E1000_RXSTMPL);
	regval = FUNC9(E1000_RXSTMPH);

	return FUNC6(ifr->ifr_data, &config, sizeof(config)) ?
		-EFAULT : 0;
}