#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  flags; } ;
struct ctcm_priv {TYPE_1__** channel; scalar_t__ fsm; } ;
struct ccwgroup_device {int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IFF_RUNNING ; 
 size_t READ ; 
 int /*<<< orphan*/  SETUP ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ctcm_priv* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct ccwgroup_device *cgdev)
{
	struct ctcm_priv *priv;
	struct net_device *dev;

	priv = FUNC7(&cgdev->dev);
	if (!priv)
		return -ENODEV;

	if (priv->channel[READ]) {
		dev = priv->channel[READ]->netdev;
		FUNC0(SETUP, dev, "");
		/* Close the device */
		FUNC4(dev);
		dev->flags &= ~IFF_RUNNING;
		FUNC6(&cgdev->dev);
		FUNC2(priv->channel[READ]);
	} else
		dev = NULL;

	if (priv->channel[WRITE])
		FUNC2(priv->channel[WRITE]);

	if (dev) {
		FUNC9(dev);
		FUNC5(dev);
	}

	if (priv->fsm)
		FUNC8(priv->fsm);

	FUNC1(cgdev->cdev[1]);
	FUNC1(cgdev->cdev[0]);

	if (priv->channel[READ])
		FUNC3(priv->channel[READ]);
	if (priv->channel[WRITE])
		FUNC3(priv->channel[WRITE]);
	priv->channel[READ] = priv->channel[WRITE] = NULL;

	return 0;

}