#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int /*<<< orphan*/  restart_timer; TYPE_1__* mpcg; int /*<<< orphan*/  fsm; } ;
typedef  int /*<<< orphan*/  fsm_instance ;
struct TYPE_2__ {int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int CTCM_TIME_1_SEC ; 
 int CTCM_TIME_5_SEC ; 
 int /*<<< orphan*/  DEV_EVENT_START ; 
 int /*<<< orphan*/  DEV_EVENT_STOP ; 
 scalar_t__ FUNC1 (struct ctcm_priv*) ; 
 int /*<<< orphan*/  MPCG_STATE_RESET ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(fsm_instance *fi, int event, void *arg)
{
	int restart_timer;
	struct net_device *dev = arg;
	struct ctcm_priv *priv = dev->ml_priv;

	FUNC0(TRACE, dev, "");

	if (FUNC1(priv)) {
		restart_timer = CTCM_TIME_1_SEC;
	} else {
		restart_timer = CTCM_TIME_5_SEC;
	}
	FUNC3(&dev->dev, "Restarting device\n");

	FUNC2(fi, event, arg);
	FUNC5(priv->fsm, DEV_EVENT_STOP, dev);
	if (FUNC1(priv))
		FUNC6(priv->mpcg->fsm, MPCG_STATE_RESET);

	/* going back into start sequence too quickly can	  */
	/* result in the other side becoming unreachable   due	  */
	/* to sense reported when IO is aborted			  */
	FUNC4(&priv->restart_timer, restart_timer,
			DEV_EVENT_START, dev);
}