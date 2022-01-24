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
struct gfar_private {int /*<<< orphan*/ * phydev; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  rx_recycle; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct gfar_private *priv = FUNC2(dev);

	FUNC1(&priv->napi);

	FUNC5(&priv->rx_recycle);
	FUNC0(&priv->reset_task);
	FUNC6(dev);

	/* Disconnect from the PHY */
	FUNC4(priv->phydev);
	priv->phydev = NULL;

	FUNC3(dev);

	return 0;
}