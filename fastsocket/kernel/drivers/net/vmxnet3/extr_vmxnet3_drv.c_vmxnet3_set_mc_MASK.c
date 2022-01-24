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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vmxnet3_adapter {int /*<<< orphan*/  cmd_lock; TYPE_2__* shared; } ;
struct net_device {int flags; } ;
struct Vmxnet3_RxFilterConf {int rxMode; scalar_t__ mfTablePA; scalar_t__ mfTableLen; } ;
struct TYPE_3__ {struct Vmxnet3_RxFilterConf rxFilterConf; } ;
struct TYPE_4__ {TYPE_1__ devRead; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_MAC_FILTERS ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_RX_MODE ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int VMXNET3_RXM_ALL_MULTI ; 
 int VMXNET3_RXM_BCAST ; 
 int VMXNET3_RXM_MCAST ; 
 int VMXNET3_RXM_PROMISC ; 
 int VMXNET3_RXM_UCAST ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct vmxnet3_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct net_device*) ; 

__attribute__((used)) static void
FUNC13(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter = FUNC8(netdev);
	unsigned long flags;
	struct Vmxnet3_RxFilterConf *rxConf =
					&adapter->shared->devRead.rxFilterConf;
	u8 *new_table = NULL;
	u32 new_mode = VMXNET3_RXM_UCAST;

	if (netdev->flags & IFF_PROMISC)
		new_mode |= VMXNET3_RXM_PROMISC;

	if (netdev->flags & IFF_BROADCAST)
		new_mode |= VMXNET3_RXM_BCAST;

	if (netdev->flags & IFF_ALLMULTI)
		new_mode |= VMXNET3_RXM_ALL_MULTI;
	else
		if (!FUNC7(netdev)) {
			new_table = FUNC12(netdev);
			if (new_table) {
				new_mode |= VMXNET3_RXM_MCAST;
				rxConf->mfTableLen = FUNC1(
					FUNC6(netdev) * ETH_ALEN);
				rxConf->mfTablePA = FUNC3(FUNC11(
						    new_table));
			} else {
				FUNC5(netdev, "failed to copy mcast list"
					    ", setting ALL_MULTI\n");
				new_mode |= VMXNET3_RXM_ALL_MULTI;
			}
		}


	if (!(new_mode & VMXNET3_RXM_MCAST)) {
		rxConf->mfTableLen = 0;
		rxConf->mfTablePA = 0;
	}

	FUNC9(&adapter->cmd_lock, flags);
	if (new_mode != rxConf->rxMode) {
		rxConf->rxMode = FUNC2(new_mode);
		FUNC0(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_UPDATE_RX_MODE);
	}

	FUNC0(adapter, VMXNET3_REG_CMD,
			       VMXNET3_CMD_UPDATE_MAC_FILTERS);
	FUNC10(&adapter->cmd_lock, flags);

	FUNC4(new_table);
}