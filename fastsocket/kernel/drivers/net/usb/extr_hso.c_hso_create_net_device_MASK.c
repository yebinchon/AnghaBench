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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct hso_net {void* mux_bulk_tx_buf; void* mux_bulk_tx_urb; void** mux_bulk_rx_buf_pool; void** mux_bulk_rx_urb_pool; void* out_endp; void* in_endp; struct hso_device* parent; struct net_device* net; } ;
struct TYPE_2__ {struct hso_net* dev_net; } ;
struct hso_device {TYPE_1__ port_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MUX_BULK_RX_BUF_COUNT ; 
 int /*<<< orphan*/  MUX_BULK_RX_BUF_SIZE ; 
 int /*<<< orphan*/  MUX_BULK_TX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_BULK ; 
 int /*<<< orphan*/  FUNC2 (struct hso_device*) ; 
 struct net_device* FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct hso_device* FUNC5 (struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hso_device*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct hso_device*) ; 
 void* FUNC8 (struct usb_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hso_device*) ; 
 int /*<<< orphan*/  hso_net_init ; 
 int /*<<< orphan*/  hso_type ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hso_net* FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hso_device *FUNC14(struct usb_interface *interface,
						int port_spec)
{
	int result, i;
	struct net_device *net;
	struct hso_net *hso_net;
	struct hso_device *hso_dev;

	hso_dev = FUNC5(interface, port_spec);
	if (!hso_dev)
		return NULL;

	/* allocate our network device, then we can put in our private data */
	/* call hso_net_init to do the basic initialization */
	net = FUNC3(sizeof(struct hso_net), "hso%d", hso_net_init);
	if (!net) {
		FUNC4(&interface->dev, "Unable to create ethernet device\n");
		goto exit;
	}

	hso_net = FUNC11(net);

	hso_dev->port_data.dev_net = hso_net;
	hso_net->net = net;
	hso_net->parent = hso_dev;

	hso_net->in_endp = FUNC8(interface, USB_ENDPOINT_XFER_BULK,
				      USB_DIR_IN);
	if (!hso_net->in_endp) {
		FUNC4(&interface->dev, "Can't find BULK IN endpoint\n");
		goto exit;
	}
	hso_net->out_endp = FUNC8(interface, USB_ENDPOINT_XFER_BULK,
				       USB_DIR_OUT);
	if (!hso_net->out_endp) {
		FUNC4(&interface->dev, "Can't find BULK OUT endpoint\n");
		goto exit;
	}
	FUNC0(net, &interface->dev);
	FUNC1(net, &hso_type);

	/* registering our net device */
	result = FUNC12(net);
	if (result) {
		FUNC4(&interface->dev, "Failed to register device\n");
		goto exit;
	}

	/* start allocating */
	for (i = 0; i < MUX_BULK_RX_BUF_COUNT; i++) {
		hso_net->mux_bulk_rx_urb_pool[i] = FUNC13(0, GFP_KERNEL);
		if (!hso_net->mux_bulk_rx_urb_pool[i]) {
			FUNC4(&interface->dev, "Could not allocate rx urb\n");
			goto exit;
		}
		hso_net->mux_bulk_rx_buf_pool[i] = FUNC10(MUX_BULK_RX_BUF_SIZE,
							   GFP_KERNEL);
		if (!hso_net->mux_bulk_rx_buf_pool[i]) {
			FUNC4(&interface->dev, "Could not allocate rx buf\n");
			goto exit;
		}
	}
	hso_net->mux_bulk_tx_urb = FUNC13(0, GFP_KERNEL);
	if (!hso_net->mux_bulk_tx_urb) {
		FUNC4(&interface->dev, "Could not allocate tx urb\n");
		goto exit;
	}
	hso_net->mux_bulk_tx_buf = FUNC10(MUX_BULK_TX_BUF_SIZE, GFP_KERNEL);
	if (!hso_net->mux_bulk_tx_buf) {
		FUNC4(&interface->dev, "Could not allocate tx buf\n");
		goto exit;
	}

	FUNC2(hso_dev);

	FUNC9(hso_dev);

	FUNC6(hso_dev, interface);

	return hso_dev;
exit:
	FUNC7(hso_dev);
	return NULL;
}