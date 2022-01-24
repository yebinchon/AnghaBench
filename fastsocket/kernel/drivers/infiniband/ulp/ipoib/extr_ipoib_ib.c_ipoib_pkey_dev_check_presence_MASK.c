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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  flags; int /*<<< orphan*/  pkey; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	u16 pkey_index = 0;

	if (FUNC1(priv->ca, priv->port, priv->pkey, &pkey_index))
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
	else
		FUNC3(IPOIB_PKEY_ASSIGNED, &priv->flags);
}