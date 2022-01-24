#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {char* name; } ;
struct TYPE_8__ {int max_adj; int pps; void* enable; void* settime; void* gettime; void* adjtime; void* adjfreq; int /*<<< orphan*/  n_per_out; int /*<<< orphan*/  n_ext_ts; int /*<<< orphan*/  n_alarm; void* owner; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/ * ptp_clock; TYPE_3__* pdev; TYPE_4__ ptp_caps; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  tmreg_lock; TYPE_2__ hw; struct net_device* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* THIS_MODULE ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 void* ixgbe_ptp_adjfreq ; 
 void* ixgbe_ptp_adjtime ; 
 void* ixgbe_ptp_enable ; 
 void* ixgbe_ptp_gettime ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 void* ixgbe_ptp_settime ; 
 int /*<<< orphan*/  ixgbe_ptp_tx_hwtstamp_work ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	switch (adapter->hw.mac.type) {
	case ixgbe_mac_X540:
		FUNC7(adapter->ptp_caps.name, 16, "%s", netdev->name);
		adapter->ptp_caps.owner = THIS_MODULE;
		adapter->ptp_caps.max_adj = 250000000;
		adapter->ptp_caps.n_alarm = 0;
		adapter->ptp_caps.n_ext_ts = 0;
		adapter->ptp_caps.n_per_out = 0;
		adapter->ptp_caps.pps = 1;
		adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq;
		adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
		adapter->ptp_caps.gettime = ixgbe_ptp_gettime;
		adapter->ptp_caps.settime = ixgbe_ptp_settime;
		adapter->ptp_caps.enable = ixgbe_ptp_enable;
		break;
	case ixgbe_mac_82599EB:
		FUNC7(adapter->ptp_caps.name, 16, "%s", netdev->name);
		adapter->ptp_caps.owner = THIS_MODULE;
		adapter->ptp_caps.max_adj = 250000000;
		adapter->ptp_caps.n_alarm = 0;
		adapter->ptp_caps.n_ext_ts = 0;
		adapter->ptp_caps.n_per_out = 0;
		adapter->ptp_caps.pps = 0;
		adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq;
		adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
		adapter->ptp_caps.gettime = ixgbe_ptp_gettime;
		adapter->ptp_caps.settime = ixgbe_ptp_settime;
		adapter->ptp_caps.enable = ixgbe_ptp_enable;
		break;
	default:
		adapter->ptp_clock = NULL;
		return;
	}

	FUNC8(&adapter->tmreg_lock);
	FUNC0(&adapter->ptp_tx_work, ixgbe_ptp_tx_hwtstamp_work);

	adapter->ptp_clock = FUNC5(&adapter->ptp_caps,
						&adapter->pdev->dev);
	if (FUNC1(adapter->ptp_clock)) {
		adapter->ptp_clock = NULL;
		FUNC2("ptp_clock_register failed\n");
	} else
		FUNC3("registered PHC device on %s\n", netdev->name);

	FUNC4(adapter);

	/* enter the IXGBE_PTP_RUNNING state */
	FUNC6(__IXGBE_PTP_RUNNING, &adapter->state);

	return;
}