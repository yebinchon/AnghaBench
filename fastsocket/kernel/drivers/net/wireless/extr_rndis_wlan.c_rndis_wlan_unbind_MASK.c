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
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct rndis_wlan_private {TYPE_1__ wdev; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  dev_poller_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rndis_wlan_private* FUNC5 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct usbnet *usbdev, struct usb_interface *intf)
{
	struct rndis_wlan_private *priv = FUNC5(usbdev);

	/* turn radio off */
	FUNC3(usbdev, false);

	FUNC0(&priv->dev_poller_work);
	FUNC0(&priv->scan_work);
	FUNC1(&priv->work);
	FUNC4(priv->workqueue);
	FUNC2(priv->workqueue);

	FUNC6(usbdev, intf);

	FUNC8(priv->wdev.wiphy);
	FUNC7(priv->wdev.wiphy);
}