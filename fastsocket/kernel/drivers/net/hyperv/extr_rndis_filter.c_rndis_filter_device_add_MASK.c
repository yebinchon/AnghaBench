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
struct rndis_device {int /*<<< orphan*/  hw_mac_adr; scalar_t__ link_state; struct netvsc_device* net_dev; } ;
struct netvsc_device_info {scalar_t__ link_state; int /*<<< orphan*/  mac_adr; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct hv_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 struct rndis_device* FUNC1 () ; 
 struct netvsc_device* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rndis_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hv_device*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct hv_device*) ; 
 int FUNC7 (struct rndis_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct rndis_device*) ; 
 int FUNC9 (struct rndis_device*) ; 

int FUNC10(struct hv_device *dev,
				  void *additional_info)
{
	int ret;
	struct netvsc_device *net_device;
	struct rndis_device *rndis_device;
	struct netvsc_device_info *device_info = additional_info;

	rndis_device = FUNC1();
	if (!rndis_device)
		return -ENODEV;

	/*
	 * Let the inner driver handle this first to create the netvsc channel
	 * NOTE! Once the channel is created, we may get a receive callback
	 * (RndisFilterOnReceive()) before this call is completed
	 */
	ret = FUNC5(dev, additional_info);
	if (ret != 0) {
		FUNC3(rndis_device);
		return ret;
	}


	/* Initialize the rndis device */
	net_device = FUNC2(dev);

	net_device->extension = rndis_device;
	rndis_device->net_dev = net_device;

	/* Send the rndis initialization message */
	ret = FUNC7(rndis_device);
	if (ret != 0) {
		FUNC6(dev);
		return ret;
	}

	/* Get the mac address */
	ret = FUNC9(rndis_device);
	if (ret != 0) {
		FUNC6(dev);
		return ret;
	}

	FUNC4(device_info->mac_adr, rndis_device->hw_mac_adr, ETH_ALEN);

	FUNC8(rndis_device);

	device_info->link_state = rndis_device->link_state;

	FUNC0(&dev->device, "Device MAC %pM link state %s\n",
		 rndis_device->hw_mac_adr,
		 device_info->link_state ? "down" : "up");

	return ret;
}