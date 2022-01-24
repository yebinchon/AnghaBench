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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {int connected; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 struct rndis_wlan_private* FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC2(usbdev);

	if (priv->connected) {
		priv->connected = false;
		FUNC3(priv->bssid, 0, ETH_ALEN);

		FUNC1(usbdev);

		FUNC0(usbdev->net, 0, NULL, 0, GFP_KERNEL);
	}

	FUNC4(usbdev->net);
}