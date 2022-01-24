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
struct netvsc_device_info {int /*<<< orphan*/  mac_adr; int /*<<< orphan*/  ring_size; } ;
struct net_device_context {int /*<<< orphan*/  work; int /*<<< orphan*/  dwork; struct hv_device* device_ctx; } ;
struct net_device {int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * netdev_ops; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  device_ops ; 
 int /*<<< orphan*/  do_set_multicast ; 
 int /*<<< orphan*/  ethtool_ops ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hv_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int) ; 
 struct net_device_context* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  netvsc_send_garp ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  ring_size ; 
 int FUNC14 (struct hv_device*,struct netvsc_device_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 

__attribute__((used)) static int FUNC16(struct hv_device *dev,
			const struct hv_vmbus_device_id *dev_id)
{
	struct net_device *net = NULL;
	struct net_device_context *net_device_ctx;
	struct netvsc_device_info device_info;
	int ret;

	net = FUNC4(sizeof(struct net_device_context));
	if (!net)
		return -ENOMEM;

	/* Set initial state */
	FUNC10(net);

	net_device_ctx = FUNC9(net);
	net_device_ctx->device_ctx = dev;
	FUNC6(dev, net);
	FUNC0(&net_device_ctx->dwork, netvsc_send_garp);
	FUNC1(&net_device_ctx->work, do_set_multicast);

	net->netdev_ops = &device_ops;

	/* TODO: Add GSO and Checksum offload */
	/* net->hw_features = NETIF_F_SG; */
	net->features = NETIF_F_SG | NETIF_F_HW_VLAN_TX;

	FUNC2(net, &ethtool_ops);
	FUNC3(net, &dev->device);

	ret = FUNC13(net);
	if (ret != 0) {
		FUNC12("Unable to register netdev.\n");
		FUNC5(net);
		goto out;
	}

	/* Notify the netvsc driver of the new device */
	device_info.ring_size = ring_size;
	ret = FUNC14(dev, &device_info);
	if (ret != 0) {
		FUNC8(net, "unable to add netvsc device (ret %d)\n", ret);
		FUNC15(net);
		FUNC5(net);
		FUNC6(dev, NULL);
		return ret;
	}
	FUNC7(net->dev_addr, device_info.mac_adr, ETH_ALEN);

	FUNC11(net);

out:
	return ret;
}