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
struct net_device {int /*<<< orphan*/  dev; } ;
struct gfar_private {int /*<<< orphan*/  wol_en; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_recycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct gfar_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct gfar_private *priv = FUNC6(dev);
	int err;

	FUNC5(&priv->napi);

	FUNC8(&priv->rx_recycle);

	/* Initialize a bunch of registers */
	FUNC3(dev);

	FUNC1(dev);

	err = FUNC2(dev);

	if(err) {
		FUNC4(&priv->napi);
		return err;
	}

	err = FUNC9(dev);
	if (err) {
		FUNC4(&priv->napi);
		return err;
	}

	FUNC7(dev);

	FUNC0(&dev->dev, priv->wol_en);

	return err;
}