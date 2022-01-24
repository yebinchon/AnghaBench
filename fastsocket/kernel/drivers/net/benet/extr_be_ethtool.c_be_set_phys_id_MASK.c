#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  beacon_state; int /*<<< orphan*/  hba_port_num; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int /*<<< orphan*/  BEACON_STATE_DISABLED ; 
 int /*<<< orphan*/  BEACON_STATE_ENABLED ; 
 int EINVAL ; 
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev,
	       enum ethtool_phys_id_state state)
{
	struct be_adapter *adapter = FUNC2(netdev);

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		FUNC0(adapter, adapter->hba_port_num,
					&adapter->beacon_state);
		return -EINVAL;

	case ETHTOOL_ID_ON:
		FUNC1(adapter, adapter->hba_port_num, 0, 0,
					BEACON_STATE_ENABLED);
		break;

	case ETHTOOL_ID_OFF:
		FUNC1(adapter, adapter->hba_port_num, 0, 0,
					BEACON_STATE_DISABLED);
		break;

	case ETHTOOL_ID_INACTIVE:
		FUNC1(adapter, adapter->hba_port_num, 0, 0,
					adapter->beacon_state);
	}

	return 0;
}