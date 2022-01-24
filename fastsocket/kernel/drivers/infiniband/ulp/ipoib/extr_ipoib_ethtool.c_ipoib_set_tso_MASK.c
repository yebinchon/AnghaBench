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
typedef  scalar_t__ u32 ;
struct net_device {int features; } ;
struct ipoib_dev_priv {int hca_caps; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_UD_TSO ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*) ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct ipoib_dev_priv *priv = FUNC1(dev);

	if (data) {
		if (!FUNC2(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
		    (dev->features & NETIF_F_SG) &&
		    (priv->hca_caps & IB_DEVICE_UD_TSO)) {
			dev->features |= NETIF_F_TSO;
		} else {
			FUNC0(priv, "can't set TSO on\n");
			return -EOPNOTSUPP;
		}
	} else
		dev->features &= ~NETIF_F_TSO;

	return 0;
}