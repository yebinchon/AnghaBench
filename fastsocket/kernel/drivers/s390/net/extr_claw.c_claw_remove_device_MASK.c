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
struct claw_privbk {TYPE_1__* channel; struct claw_privbk* p_env; struct claw_privbk* p_mtc_envelope; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/  dev; TYPE_2__** cdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct claw_privbk* irb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ccwgroup_device*) ; 
 struct claw_privbk* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct claw_privbk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static void
FUNC10(struct ccwgroup_device *cgdev)
{
	struct claw_privbk *priv;

	FUNC0(!cgdev);
	FUNC1(2, setup, "%s", FUNC6(&cgdev->dev));
	priv = FUNC4(&cgdev->dev);
	FUNC0(!priv);
	FUNC5(&cgdev->dev, " will be removed.\n");
	if (cgdev->state == CCWGROUP_ONLINE)
		FUNC3(cgdev);
	FUNC2(&cgdev->dev);
	FUNC8(priv->p_mtc_envelope);
	priv->p_mtc_envelope=NULL;
	FUNC8(priv->p_env);
	priv->p_env=NULL;
	FUNC8(priv->channel[0].irb);
	priv->channel[0].irb=NULL;
	FUNC8(priv->channel[1].irb);
	priv->channel[1].irb=NULL;
	FUNC8(priv);
	FUNC7(&cgdev->dev, NULL);
	FUNC7(&cgdev->cdev[READ]->dev, NULL);
	FUNC7(&cgdev->cdev[WRITE]->dev, NULL);
	FUNC9(&cgdev->dev);

	return;
}