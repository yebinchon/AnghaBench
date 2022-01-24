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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {int connected; int /*<<< orphan*/  bssid; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rndis_wlan_private* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev,
								u16 reason_code)
{
	struct rndis_wlan_private *priv = FUNC3(wiphy);
	struct usbnet *usbdev = priv->usbdev;

	FUNC2(usbdev->net, "cfg80211.disconnect(%d)\n", reason_code);

	priv->connected = false;
	FUNC1(priv->bssid, 0, ETH_ALEN);

	return FUNC0(usbdev);
}