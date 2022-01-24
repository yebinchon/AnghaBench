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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct kaweth_device {int /*<<< orphan*/  intbufferhandle; scalar_t__ intbuffer; int /*<<< orphan*/  dev; int /*<<< orphan*/  rxbufferhandle; scalar_t__ rx_buf; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  KAWETH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct kaweth_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct kaweth_device *kaweth = FUNC7(intf);
	struct net_device *netdev;

	FUNC1(&intf->dev, "Unregistering\n");

	FUNC8(intf, NULL);
	if (!kaweth) {
		FUNC2(&intf->dev, "unregistering non-existant device\n");
		return;
	}
	netdev = kaweth->net;

	FUNC0("Unregistering net device");
	FUNC4(netdev);

	FUNC6(kaweth->rx_urb);
	FUNC6(kaweth->tx_urb);
	FUNC6(kaweth->irq_urb);

	FUNC5(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
	FUNC5(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);

	FUNC3(netdev);
}