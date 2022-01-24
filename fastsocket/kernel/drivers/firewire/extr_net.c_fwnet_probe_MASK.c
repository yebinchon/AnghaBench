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
struct rfc2734_header {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct fwnet_device {int /*<<< orphan*/  dev_link; struct net_device* netdev; struct fw_card* card; int /*<<< orphan*/  peer_list; int /*<<< orphan*/  sent_list; int /*<<< orphan*/  broadcasted_list; int /*<<< orphan*/  packet_list; int /*<<< orphan*/  local_fifo; scalar_t__ broadcast_xmt_datagramlabel; scalar_t__ broadcast_xmt_max_payload; int /*<<< orphan*/ * broadcast_rcv_context; int /*<<< orphan*/  broadcast_state; int /*<<< orphan*/  lock; } ;
struct fw_unit {int dummy; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {int max_receive; unsigned long long guid; int /*<<< orphan*/  device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FWNET_BROADCAST_ERROR ; 
 int /*<<< orphan*/  FWNET_NO_FIFO_ADDR ; 
 int IEEE1394_GASP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 struct fw_device* FUNC6 (struct fw_unit*) ; 
 struct fw_unit* FUNC7 (struct device*) ; 
 int FUNC8 (struct fwnet_device*,struct fw_unit*,struct fw_device*) ; 
 struct fwnet_device* FUNC9 (struct fw_card*) ; 
 int /*<<< orphan*/  fwnet_device_list ; 
 int /*<<< orphan*/  fwnet_device_mutex ; 
 int /*<<< orphan*/  fwnet_init_dev ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct fwnet_device* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static int FUNC20(struct device *_dev)
{
	struct fw_unit *unit = FUNC7(_dev);
	struct fw_device *device = FUNC6(unit);
	struct fw_card *card = device->card;
	struct net_device *net;
	bool allocated_netdev = false;
	struct fwnet_device *dev;
	unsigned max_mtu;
	int ret;

	FUNC13(&fwnet_device_mutex);

	dev = FUNC9(card);
	if (dev) {
		net = dev->netdev;
		goto have_dev;
	}

	net = FUNC2(sizeof(*dev), "firewire%d", fwnet_init_dev);
	if (net == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	allocated_netdev = true;
	FUNC1(net, card->device);
	dev = FUNC15(net);

	FUNC18(&dev->lock);
	dev->broadcast_state = FWNET_BROADCAST_ERROR;
	dev->broadcast_rcv_context = NULL;
	dev->broadcast_xmt_max_payload = 0;
	dev->broadcast_xmt_datagramlabel = 0;

	dev->local_fifo = FWNET_NO_FIFO_ADDR;

	FUNC0(&dev->packet_list);
	FUNC0(&dev->broadcasted_list);
	FUNC0(&dev->sent_list);
	FUNC0(&dev->peer_list);

	dev->card = card;
	dev->netdev = net;

	/*
	 * Use the RFC 2734 default 1500 octets or the maximum payload
	 * as initial MTU
	 */
	max_mtu = (1 << (card->max_receive + 1))
		  - sizeof(struct rfc2734_header) - IEEE1394_GASP_HDR_SIZE;
	net->mtu = FUNC12(1500U, max_mtu);

	/* Set our hardware address while we're at it */
	FUNC16(card->guid, net->dev_addr);
	FUNC16(~0ULL, net->broadcast);
	ret = FUNC17(net);
	if (ret) {
		FUNC4("Cannot register the driver\n");
		goto out;
	}

	FUNC10(&dev->dev_link, &fwnet_device_list);
	FUNC5("%s: IPv4 over FireWire on device %016llx\n",
		  net->name, (unsigned long long)card->guid);
 have_dev:
	ret = FUNC8(dev, unit, device);
	if (ret && allocated_netdev) {
		FUNC19(net);
		FUNC11(&dev->dev_link);
	}
 out:
	if (ret && allocated_netdev)
		FUNC3(net);

	FUNC14(&fwnet_device_mutex);

	return ret;
}