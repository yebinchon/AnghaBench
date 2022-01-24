#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/ * ml_priv; int /*<<< orphan*/  name; } ;
struct claw_privbk {TYPE_2__* p_env; TYPE_1__* channel; } ;
struct ccwgroup_device {int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ndev; } ;
struct TYPE_3__ {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int IFF_RUNNING ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*) ; 
 struct claw_privbk* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct ccwgroup_device *cgdev)
{
	struct claw_privbk *priv;
	struct net_device *ndev;
	int	ret;

	FUNC0(2, setup, "%s", FUNC6(&cgdev->dev));
	priv = FUNC4(&cgdev->dev);
	if (!priv)
		return -ENODEV;
	ndev = priv->channel[READ].ndev;
	if (ndev) {
		/* Close the device */
		FUNC5(&cgdev->dev, "%s: shutting down \n",
			ndev->name);
		if (ndev->flags & IFF_RUNNING)
			ret = FUNC3(ndev);
		ndev->flags &=~IFF_RUNNING;
		FUNC7(ndev);
		ndev->ml_priv = NULL;  /* cgdev data, not ndev's to free */
		FUNC2(ndev, 1);
		priv->channel[READ].ndev = NULL;
		priv->channel[WRITE].ndev = NULL;
		priv->p_env->ndev = NULL;
	}
	FUNC1(cgdev->cdev[1]);
	FUNC1(cgdev->cdev[0]);
	return 0;
}