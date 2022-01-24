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
typedef  scalar_t__ u64 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int broadcast_channel; } ;
struct hpsb_host {TYPE_1__ csr; int /*<<< orphan*/  id; int /*<<< orphan*/  device; } ;
struct eth1394_priv {int broadcast_channel; struct net_device* wake_dev; int /*<<< orphan*/  wake; scalar_t__ local_fifo; struct hpsb_host* host; int /*<<< orphan*/  lock; int /*<<< orphan*/  ip_node_list; } ;
struct eth1394_host_info {struct net_device* dev; struct hpsb_host* host; } ;

/* Variables and functions */
 scalar_t__ CSR1212_INVALID_ADDR_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ETHER1394_REGION_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  addr_ops ; 
 struct net_device* FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth1394_highlevel ; 
 int /*<<< orphan*/  ether1394_init_dev ; 
 int /*<<< orphan*/  FUNC6 (struct eth1394_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  ether1394_wake_queue ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct hpsb_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct hpsb_host*) ; 
 struct eth1394_host_info* FUNC12 (int /*<<< orphan*/ *,struct hpsb_host*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct hpsb_host*,scalar_t__) ; 
 struct eth1394_priv* FUNC15 (struct net_device*) ; 
 scalar_t__ FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct hpsb_host *host)
{
	struct eth1394_host_info *hi = NULL;
	struct net_device *dev = NULL;
	struct eth1394_priv *priv;
	u64 fifo_addr;

	if (FUNC10(host) != 0) {
		FUNC1(KERN_ERR, "Can't add IP-over-1394 ROM entry\n");
		return;
	}

	fifo_addr = FUNC9(
			&eth1394_highlevel, host, &addr_ops,
			ETHER1394_REGION_ADDR_LEN, ETHER1394_REGION_ADDR_LEN,
			CSR1212_INVALID_ADDR_SPACE, CSR1212_INVALID_ADDR_SPACE);
	if (fifo_addr == CSR1212_INVALID_ADDR_SPACE) {
		FUNC1(KERN_ERR, "Cannot register CSR space\n");
		FUNC11(host);
		return;
	}

	dev = FUNC5(sizeof(*priv), "eth%d", ether1394_init_dev);
	if (dev == NULL) {
		FUNC1(KERN_ERR, "Out of memory\n");
		goto out;
	}

	FUNC4(dev, &host->device);

	priv = FUNC15(dev);
	FUNC2(&priv->ip_node_list);
	FUNC17(&priv->lock);
	priv->host = host;
	priv->local_fifo = fifo_addr;
	FUNC3(&priv->wake, ether1394_wake_queue);
	priv->wake_dev = dev;

	hi = FUNC12(&eth1394_highlevel, host, sizeof(*hi));
	if (hi == NULL) {
		FUNC1(KERN_ERR, "Out of memory\n");
		goto out;
	}

	FUNC7(dev, 1);

	if (FUNC16(dev)) {
		FUNC1(KERN_ERR, "Cannot register the driver\n");
		goto out;
	}

	FUNC0(KERN_INFO, dev->name, "IPv4 over IEEE 1394 (fw-host%d)\n",
		      host->id);

	hi->host = host;
	hi->dev = dev;

	/* Ignore validity in hopes that it will be set in the future.  It'll
	 * be checked when the eth device is opened. */
	priv->broadcast_channel = host->csr.broadcast_channel & 0x3f;

	FUNC6(priv);
	return;
out:
	if (dev)
		FUNC8(dev);
	if (hi)
		FUNC13(&eth1394_highlevel, host);
	FUNC14(&eth1394_highlevel, host, fifo_addr);
	FUNC11(host);
}