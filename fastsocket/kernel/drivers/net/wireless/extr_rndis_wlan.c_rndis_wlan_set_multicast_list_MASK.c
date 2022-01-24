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
struct usbnet {int dummy; } ;
struct rndis_wlan_private {int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work_pending; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_SET_MULTICAST_LIST ; 
 struct rndis_wlan_private* FUNC0 (struct usbnet*) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct usbnet *usbdev = FUNC1(dev);
	struct rndis_wlan_private *priv = FUNC0(usbdev);

	if (FUNC4(WORK_SET_MULTICAST_LIST, &priv->work_pending))
		return;

	FUNC3(WORK_SET_MULTICAST_LIST, &priv->work_pending);
	FUNC2(priv->workqueue, &priv->work);
}