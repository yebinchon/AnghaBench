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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int max_frame_size; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct pch_gbe_adapter {unsigned long rx_buffer_len; TYPE_2__ hw; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ETH_ZLEN ; 
 int PCH_GBE_FRAME_SIZE_2048 ; 
 int PCH_GBE_FRAME_SIZE_4096 ; 
 int PCH_GBE_FRAME_SIZE_8192 ; 
 int PCH_GBE_MAX_JUMBO_FRAME_SIZE ; 
 int PCH_GBE_MAX_RX_BUFFER_SIZE ; 
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*) ; 
 int FUNC4 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int new_mtu)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	int max_frame;
	unsigned long old_rx_buffer_len = adapter->rx_buffer_len;
	int err;

	max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;
	if ((max_frame < ETH_ZLEN + ETH_FCS_LEN) ||
		(max_frame > PCH_GBE_MAX_JUMBO_FRAME_SIZE)) {
		FUNC6("Invalid MTU setting\n");
		return -EINVAL;
	}
	if (max_frame <= PCH_GBE_FRAME_SIZE_2048)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_2048;
	else if (max_frame <= PCH_GBE_FRAME_SIZE_4096)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_4096;
	else if (max_frame <= PCH_GBE_FRAME_SIZE_8192)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_8192;
	else
		adapter->rx_buffer_len = PCH_GBE_MAX_RX_BUFFER_SIZE;

	if (FUNC1(netdev)) {
		FUNC2(adapter);
		err = FUNC4(adapter);
		if (err) {
			adapter->rx_buffer_len = old_rx_buffer_len;
			FUNC4(adapter);
			return -ENOMEM;
		} else {
			netdev->mtu = new_mtu;
			adapter->hw.mac.max_frame_size = max_frame;
		}
	} else {
		FUNC3(adapter);
		netdev->mtu = new_mtu;
		adapter->hw.mac.max_frame_size = max_frame;
	}

	FUNC5("max_frame : %d  rx_buffer_len : %d  mtu : %d  max_frame_size : %d\n",
		 max_frame, (u32) adapter->rx_buffer_len, netdev->mtu,
		 adapter->hw.mac.max_frame_size);
	return 0;
}