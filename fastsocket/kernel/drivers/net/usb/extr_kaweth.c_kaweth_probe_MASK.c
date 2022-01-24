#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bcdDevice; scalar_t__ bDescriptorType; scalar_t__ bLength; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  devnum; } ;
struct net_device {int mtu; int name; int /*<<< orphan*/  features; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  broadcast; } ;
struct TYPE_6__ {int statistics_mask; int max_multicast_filters; int /*<<< orphan*/  segment_size; scalar_t__* const hw_addr; } ;
struct kaweth_device {void* tx_urb; void* rx_urb; void* irq_urb; int /*<<< orphan*/  intbufferhandle; void* intbuffer; struct usb_device* dev; int /*<<< orphan*/  rxbufferhandle; void* rx_buf; struct net_device* net; int /*<<< orphan*/  lowmem_work; TYPE_3__ configuration; struct usb_interface* intf; int /*<<< orphan*/ * firmware_buf; int /*<<< orphan*/  term_wait; int /*<<< orphan*/  device_lock; } ;
typedef  scalar_t__* eth_addr_t ;
typedef  int /*<<< orphan*/  bcast_addr ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  KAWETH_BUF_SIZE ; 
 int KAWETH_PACKET_FILTER_BROADCAST ; 
 int KAWETH_PACKET_FILTER_DIRECTED ; 
 int KAWETH_PACKET_FILTER_MULTICAST ; 
 int /*<<< orphan*/  KAWETH_SOFS_TO_WAIT ; 
 int /*<<< orphan*/  KAWETH_TX_TIMEOUT ; 
 int /*<<< orphan*/  NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC12 (struct usb_interface*) ; 
 int FUNC13 (struct kaweth_device*,char*,int,int) ; 
 int /*<<< orphan*/  kaweth_netdev_ops ; 
 int FUNC14 (struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct kaweth_device*) ; 
 int /*<<< orphan*/  kaweth_resubmit_tl ; 
 int FUNC16 (struct kaweth_device*,int) ; 
 scalar_t__ FUNC17 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct kaweth_device*,int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__* const*,scalar_t__* const*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__* const*,int) ; 
 struct kaweth_device* FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 void* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC27 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int /*<<< orphan*/  FUNC30 (struct usb_interface*,struct kaweth_device*) ; 

__attribute__((used)) static int FUNC31(
		struct usb_interface *intf,
		const struct usb_device_id *id      /* from id_table */
	)
{
	struct usb_device *dev = FUNC12(intf);
	struct kaweth_device *kaweth;
	struct net_device *netdev;
	const eth_addr_t bcast_addr = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
	int result = 0;

	FUNC5("Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x",
		 dev->devnum,
		 FUNC20(dev->descriptor.idVendor),
		 FUNC20(dev->descriptor.idProduct),
		 FUNC20(dev->descriptor.bcdDevice));

	FUNC5("Device at %p", dev);

	FUNC5("Descriptor length: %x type: %x",
		 (int)dev->descriptor.bLength,
		 (int)dev->descriptor.bDescriptorType);

	netdev = FUNC4(sizeof(*kaweth));
	if (!netdev)
		return -ENOMEM;

	kaweth = FUNC23(netdev);
	kaweth->dev = dev;
	kaweth->net = netdev;

	FUNC25(&kaweth->device_lock);
	FUNC11(&kaweth->term_wait);

	FUNC5("Resetting.");

	FUNC15(kaweth);

	/*
	 * If high byte of bcdDevice is nonzero, firmware is already
	 * downloaded. Don't try to do it again, or we'll hang the device.
	 */

	if (FUNC20(dev->descriptor.bcdDevice) >> 8) {
		FUNC6(&intf->dev, "Firmware present in device.\n");
	} else {
		/* Download the firmware */
		FUNC6(&intf->dev, "Downloading firmware...\n");
		kaweth->firmware_buf = (__u8 *)FUNC3(GFP_KERNEL);
		if ((result = FUNC13(kaweth,
						      "kaweth/new_code.bin",
						      100,
						      2)) < 0) {
			FUNC8("Error downloading firmware (%d)", result);
			goto err_fw;
		}

		if ((result = FUNC13(kaweth,
						      "kaweth/new_code_fix.bin",
						      100,
						      3)) < 0) {
			FUNC8("Error downloading firmware fix (%d)", result);
			goto err_fw;
		}

		if ((result = FUNC13(kaweth,
						      "kaweth/trigger_code.bin",
						      126,
						      2)) < 0) {
			FUNC8("Error downloading trigger code (%d)", result);
			goto err_fw;

		}

		if ((result = FUNC13(kaweth,
						      "kaweth/trigger_code_fix.bin",
						      126,
						      3)) < 0) {
			FUNC8("Error downloading trigger code fix (%d)", result);
			goto err_fw;
		}


		if ((result = FUNC19(kaweth, 126)) < 0) {
			FUNC8("Error triggering firmware (%d)", result);
			goto err_fw;
		}

		/* Device will now disappear for a moment...  */
		FUNC6(&intf->dev, "Firmware loaded.  I'll be back...\n");
err_fw:
		FUNC10((unsigned long)kaweth->firmware_buf);
		FUNC9(netdev);
		return -EIO;
	}

	result = FUNC14(kaweth);

	if(result < 0) {
		FUNC8("Error reading configuration (%d), no net device created", result);
		goto err_free_netdev;
	}

	FUNC6(&intf->dev, "Statistics collection: %x\n", kaweth->configuration.statistics_mask);
	FUNC6(&intf->dev, "Multicast filter limit: %x\n", kaweth->configuration.max_multicast_filters & ((1 << 15) - 1));
	FUNC6(&intf->dev, "MTU: %d\n", FUNC20(kaweth->configuration.segment_size));
	FUNC6(&intf->dev, "Read MAC address %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\n",
		 (int)kaweth->configuration.hw_addr[0],
		 (int)kaweth->configuration.hw_addr[1],
		 (int)kaweth->configuration.hw_addr[2],
		 (int)kaweth->configuration.hw_addr[3],
		 (int)kaweth->configuration.hw_addr[4],
		 (int)kaweth->configuration.hw_addr[5]);

	if(!FUNC21(&kaweth->configuration.hw_addr,
                   &bcast_addr,
		   sizeof(bcast_addr))) {
		FUNC8("Firmware not functioning properly, no net device created");
		goto err_free_netdev;
	}

	if(FUNC18(kaweth, KAWETH_BUF_SIZE) < 0) {
		FUNC5("Error setting URB size");
		goto err_free_netdev;
	}

	if(FUNC17(kaweth, KAWETH_SOFS_TO_WAIT) < 0) {
		FUNC8("Error setting SOFS wait");
		goto err_free_netdev;
	}

	result = FUNC16(kaweth,
                                           KAWETH_PACKET_FILTER_DIRECTED |
                                           KAWETH_PACKET_FILTER_BROADCAST |
                                           KAWETH_PACKET_FILTER_MULTICAST);

	if(result < 0) {
		FUNC8("Error setting receive filter");
		goto err_free_netdev;
	}

	FUNC5("Initializing net device.");

	kaweth->intf = intf;

	kaweth->tx_urb = FUNC26(0, GFP_KERNEL);
	if (!kaweth->tx_urb)
		goto err_free_netdev;
	kaweth->rx_urb = FUNC26(0, GFP_KERNEL);
	if (!kaweth->rx_urb)
		goto err_only_tx;
	kaweth->irq_urb = FUNC26(0, GFP_KERNEL);
	if (!kaweth->irq_urb)
		goto err_tx_and_rx;

	kaweth->intbuffer = FUNC27(	kaweth->dev,
						INTBUFFERSIZE,
						GFP_KERNEL,
						&kaweth->intbufferhandle);
	if (!kaweth->intbuffer)
		goto err_tx_and_rx_and_irq;
	kaweth->rx_buf = FUNC27(	kaweth->dev,
						KAWETH_BUF_SIZE,
						GFP_KERNEL,
						&kaweth->rxbufferhandle);
	if (!kaweth->rx_buf)
		goto err_all_but_rxbuf;

	FUNC22(netdev->broadcast, &bcast_addr, sizeof(bcast_addr));
	FUNC22(netdev->dev_addr, &kaweth->configuration.hw_addr,
               sizeof(kaweth->configuration.hw_addr));

	netdev->netdev_ops = &kaweth_netdev_ops;
	netdev->watchdog_timeo = KAWETH_TX_TIMEOUT;
	netdev->mtu = FUNC20(kaweth->configuration.segment_size);
	FUNC1(netdev, &ops);

	/* kaweth is zeroed as part of alloc_netdev */
	FUNC0(&kaweth->lowmem_work, kaweth_resubmit_tl);
	FUNC30(intf, kaweth);

#if 0
// dma_supported() is deeply broken on almost all architectures
	if (dma_supported (&intf->dev, 0xffffffffffffffffULL))
		kaweth->net->features |= NETIF_F_HIGHDMA;
#endif

	FUNC2(netdev, &intf->dev);
	if (FUNC24(netdev) != 0) {
		FUNC8("Error registering netdev.");
		goto err_intfdata;
	}

	FUNC6(&intf->dev, "kaweth interface created at %s\n",
		 kaweth->net->name);

	FUNC5("Kaweth probe returning.");

	return 0;

err_intfdata:
	FUNC30(intf, NULL);
	FUNC28(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
err_all_but_rxbuf:
	FUNC28(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);
err_tx_and_rx_and_irq:
	FUNC29(kaweth->irq_urb);
err_tx_and_rx:
	FUNC29(kaweth->rx_urb);
err_only_tx:
	FUNC29(kaweth->tx_urb);
err_free_netdev:
	FUNC9(netdev);

	return -EIO;
}