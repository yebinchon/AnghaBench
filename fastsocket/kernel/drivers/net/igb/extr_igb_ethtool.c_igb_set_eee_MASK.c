#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_9__ {int eee_disable; } ;
struct TYPE_10__ {TYPE_4__ _82575; } ;
struct TYPE_7__ {scalar_t__ media_type; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_5__ dev_spec; TYPE_2__ phy; TYPE_1__ mac; } ;
struct igb_adapter {TYPE_3__* pdev; struct e1000_hw hw; } ;
struct ethtool_eee {scalar_t__ tx_lpi_enabled; scalar_t__ advertised; scalar_t__ eee_enabled; scalar_t__ tx_lpi_timer; } ;
typedef  int s32 ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ e1000_i350 ; 
 scalar_t__ e1000_media_type_copper ; 
 int FUNC1 (struct net_device*,struct ethtool_eee*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 struct igb_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
		       struct ethtool_eee *edata)
{
	struct igb_adapter *adapter = FUNC5(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct ethtool_eee eee_curr;
	s32 ret_val;

	if ((hw->mac.type < e1000_i350) ||
	    (hw->phy.media_type != e1000_media_type_copper))
		return -EOPNOTSUPP;

	ret_val = FUNC1(netdev, &eee_curr);
	if (ret_val)
		return ret_val;

	if (eee_curr.eee_enabled) {
		if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
			FUNC0(&adapter->pdev->dev,
				"Setting EEE tx-lpi is not supported\n");
			return -EINVAL;
		}

		/* Tx LPI timer is not implemented currently */
		if (edata->tx_lpi_timer) {
			FUNC0(&adapter->pdev->dev,
				"Setting EEE Tx LPI timer is not supported\n");
			return -EINVAL;
		}

		if (eee_curr.advertised != edata->advertised) {
			FUNC0(&adapter->pdev->dev,
				"Setting EEE Advertisement is not supported\n");
			return -EINVAL;
		}

	} else if (!edata->eee_enabled) {
		FUNC0(&adapter->pdev->dev,
			"Setting EEE options are not supported with EEE disabled\n");
			return -EINVAL;
		}

	if (hw->dev_spec._82575.eee_disable != !edata->eee_enabled) {
		hw->dev_spec._82575.eee_disable = !edata->eee_enabled;
		FUNC4(hw);

		/* reset link */
		if (FUNC6(netdev))
			FUNC2(adapter);
		else
			FUNC3(adapter);
	}

	return 0;
}