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
struct ctcm_priv {TYPE_1__** channel; TYPE_2__* fsm; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  wait_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_OFFLINE ; 
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 scalar_t__ DEV_STATE_STOPPED ; 
 int EBUSY ; 
 size_t READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ctcm_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ccwgroup_device *gdev)
{
	struct ctcm_priv *priv = FUNC2(&gdev->dev);

	if (gdev->state == CCWGROUP_OFFLINE)
		return 0;
	FUNC5(priv->channel[READ]->netdev);
	FUNC1(priv->channel[READ]->netdev);
	if (!FUNC6(priv->fsm->wait_q,
	    FUNC3(priv->fsm) == DEV_STATE_STOPPED, CTCM_TIME_5_SEC)) {
		FUNC4(priv->channel[READ]->netdev);
		return -EBUSY;
	}
	FUNC0(gdev->cdev[1]);
	FUNC0(gdev->cdev[0]);
	return 0;
}