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
struct vio_dev {int dummy; } ;
struct net_device {int mtu; } ;
struct ibmveth_adapter {int pool_config; int /*<<< orphan*/  netdev; TYPE_1__* rx_buff_pool; struct vio_dev* vdev; } ;
struct TYPE_2__ {int buff_size; int active; } ;

/* Variables and functions */
 int EINVAL ; 
 int IBMVETH_BUFF_OH ; 
 int IBMVETH_MIN_MTU ; 
 int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ibmveth_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vio_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int new_mtu)
{
	struct ibmveth_adapter *adapter = FUNC3(dev);
	struct vio_dev *viodev = adapter->vdev;
	int new_mtu_oh = new_mtu + IBMVETH_BUFF_OH;
	int i, rc;
	int need_restart = 0;

	if (new_mtu < IBMVETH_MIN_MTU)
		return -EINVAL;

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		if (new_mtu_oh < adapter->rx_buff_pool[i].buff_size)
			break;

	if (i == IBMVETH_NUM_BUFF_POOLS)
		return -EINVAL;

	/* Deactivate all the buffer pools so that the next loop can activate
	   only the buffer pools necessary to hold the new MTU */
	if (FUNC4(adapter->netdev)) {
		need_restart = 1;
		adapter->pool_config = 1;
		FUNC0(adapter->netdev);
		adapter->pool_config = 0;
	}

	/* Look for an active buffer pool that can hold the new MTU */
	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++) {
		adapter->rx_buff_pool[i].active = 1;

		if (new_mtu_oh < adapter->rx_buff_pool[i].buff_size) {
			dev->mtu = new_mtu;
			FUNC5(viodev,
						FUNC1
						(viodev));
			if (need_restart) {
				return FUNC2(adapter->netdev);
			}
			return 0;
		}
	}

	if (need_restart && (rc = FUNC2(adapter->netdev)))
		return rc;

	return -EINVAL;
}