#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_4__ {int fc_autoneg; } ;
struct be_adapter {int function_caps; scalar_t__ rx_fc; scalar_t__ tx_fc; TYPE_2__ phy; int /*<<< orphan*/  netdev; scalar_t__ vlans_added; int /*<<< orphan*/  fw_on_flash; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  cmd_privileges; int /*<<< orphan*/  if_handle; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int BE_FUNCTION_CAPS_RSS ; 
 scalar_t__ BE_IF_FLAGS_BROADCAST ; 
 scalar_t__ BE_IF_FLAGS_MULTICAST ; 
 scalar_t__ BE_IF_FLAGS_PASS_L3L4_ERRORS ; 
 scalar_t__ BE_IF_FLAGS_RSS ; 
 scalar_t__ BE_IF_FLAGS_UNTAGGED ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct be_adapter*) ; 
 int FUNC5 (struct be_adapter*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_adapter*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct be_adapter*) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 
 scalar_t__ FUNC10 (struct be_adapter*) ; 
 int FUNC11 (struct be_adapter*) ; 
 scalar_t__ FUNC12 (struct be_adapter*) ; 
 int FUNC13 (struct be_adapter*) ; 
 scalar_t__ FUNC14 (struct be_adapter*) ; 
 scalar_t__ FUNC15 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct be_adapter*) ; 
 int FUNC19 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct be_adapter*) ; 
 scalar_t__ num_vfs ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 

__attribute__((used)) static int FUNC26(struct be_adapter *adapter)
{
	struct device *dev = &adapter->pdev->dev;
	u32 tx_fc, rx_fc, en_flags;
	int status;

	FUNC18(adapter);

	if (!FUNC23(adapter))
		FUNC6(adapter);

	status = FUNC8(adapter);
	if (status)
		goto err;

	status = FUNC13(adapter);
	if (status)
		goto err;

	en_flags = BE_IF_FLAGS_UNTAGGED | BE_IF_FLAGS_BROADCAST |
		   BE_IF_FLAGS_MULTICAST | BE_IF_FLAGS_PASS_L3L4_ERRORS;
	if (adapter->function_caps & BE_FUNCTION_CAPS_RSS)
		en_flags |= BE_IF_FLAGS_RSS;
	en_flags = en_flags & FUNC9(adapter);
	status = FUNC5(adapter, FUNC9(adapter), en_flags,
				  &adapter->if_handle, 0);
	if (status)
		goto err;

	/* Updating real_num_tx/rx_queues() requires rtnl_lock() */
	FUNC24();
	status = FUNC19(adapter);
	FUNC25();
	if (status)
		goto err;

	FUNC2(adapter, &adapter->cmd_privileges, 0);
	/* In UMC mode FW does not return right privileges.
	 * Override with correct privilege equivalent to PF.
	 */
	if (FUNC10(adapter))
		adapter->cmd_privileges = MAX_PRIVILEGES;

	status = FUNC11(adapter);
	if (status)
		goto err;

	FUNC3(adapter, adapter->fw_ver, adapter->fw_on_flash);

	if (adapter->vlans_added)
		FUNC21(adapter);

	FUNC17(adapter->netdev);

	FUNC1(adapter, &tx_fc, &rx_fc);

	if (rx_fc != adapter->rx_fc || tx_fc != adapter->tx_fc)
		FUNC7(adapter, adapter->tx_fc,
					adapter->rx_fc);

	if (FUNC15(adapter) && num_vfs) {
		if (FUNC12(adapter))
			FUNC20(adapter);
		else
			FUNC22(dev, "device doesn't support SRIOV\n");
	}

	status = FUNC4(adapter);
	if (!status && FUNC14(adapter))
		adapter->phy.fc_autoneg = 1;

	FUNC16(adapter);
	return 0;
err:
	FUNC0(adapter);
	return status;
}