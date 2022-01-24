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
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  udev; } ;
struct usb_ctrlrequest {int bRequestType; scalar_t__ wLength; scalar_t__ wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct urb {int dummy; } ;
struct net_device {int flags; scalar_t__ mc_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int PACKET_TYPE_ALL_MULTICAST ; 
 int PACKET_TYPE_BROADCAST ; 
 int PACKET_TYPE_DIRECTED ; 
 int PACKET_TYPE_PROMISCUOUS ; 
 int /*<<< orphan*/  SET_ETHERNET_PACKET_FILTER ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  int51x1_async_cmd_callback ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC6 (struct net_device*) ; 
 struct urb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct net_device *netdev)
{
	struct usb_ctrlrequest *req;
	int status;
	struct urb *urb;
	struct usbnet *dev = FUNC6(netdev);
	u16 filter = PACKET_TYPE_DIRECTED | PACKET_TYPE_BROADCAST;

	if (netdev->flags & IFF_PROMISC) {
		/* do not expect to see traffic of other PLCs */
		filter |= PACKET_TYPE_PROMISCUOUS;
		FUNC2(dev, "promiscuous mode enabled");
	} else if (netdev->mc_count ||
		  (netdev->flags & IFF_ALLMULTI)) {
		filter |= PACKET_TYPE_ALL_MULTICAST;
		FUNC1(dev, "receive all multicast enabled");
	} else {
		/* ~PROMISCUOUS, ~MULTICAST */
		FUNC1(dev, "receive own packets only");
	}

	urb = FUNC7(0, GFP_ATOMIC);
	if (!urb) {
		FUNC3(dev, "Error allocating URB");
		return;
	}

	req = FUNC5(sizeof(*req), GFP_ATOMIC);
	if (!req) {
		FUNC3(dev, "Error allocating control msg");
		goto out;
	}

	req->bRequestType = USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE;
	req->bRequest = SET_ETHERNET_PACKET_FILTER;
	req->wValue = FUNC0(filter);
	req->wIndex = 0;
	req->wLength = 0;

	FUNC8(urb, dev->udev, FUNC10(dev->udev, 0),
		(void *)req, NULL, 0,
		int51x1_async_cmd_callback,
		(void *)req);

	status = FUNC11(urb, GFP_ATOMIC);
	if (status < 0) {
		FUNC3(dev, "Error submitting control msg, sts=%d", status);
		goto out1;
	}
	return;
out1:
	FUNC4(req);
out:
	FUNC9(urb);
}