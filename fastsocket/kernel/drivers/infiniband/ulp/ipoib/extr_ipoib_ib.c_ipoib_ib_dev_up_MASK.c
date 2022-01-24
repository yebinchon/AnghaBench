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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC3(dev);

	FUNC2(dev);

	if (!FUNC5(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
		FUNC0(priv, "PKEY is not assigned.\n");
		return 0;
	}

	FUNC4(IPOIB_FLAG_OPER_UP, &priv->flags);

	return FUNC1(dev);
}