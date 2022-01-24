#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct chp_id {size_t cssid; size_t id; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {int flags; } ;
struct channel_path {int state; int cmg; TYPE_2__ dev; TYPE_1__ desc; int /*<<< orphan*/  lock; struct chp_id chpid; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; struct channel_path** chps; scalar_t__ cm_enabled; int /*<<< orphan*/  device; } ;
struct TYPE_10__ {scalar_t__ secm; scalar_t__ scmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_7__** channel_subsystems ; 
 int FUNC1 (struct channel_path*) ; 
 int /*<<< orphan*/  chp_attr_group ; 
 scalar_t__ FUNC2 (struct chp_id) ; 
 int /*<<< orphan*/  chp_release ; 
 int FUNC3 (struct channel_path*) ; 
 int FUNC4 (struct channel_path*) ; 
 TYPE_6__ css_chsc_characteristics ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,size_t,size_t) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct channel_path*) ; 
 struct channel_path* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC16(struct chp_id chpid)
{
	struct channel_path *chp;
	int ret;

	if (FUNC2(chpid))
		return 0;
	chp = FUNC9(sizeof(struct channel_path), GFP_KERNEL);
	if (!chp)
		return -ENOMEM;

	/* fill in status, etc. */
	chp->chpid = chpid;
	chp->state = 1;
	chp->dev.parent = &channel_subsystems[chpid.cssid]->device;
	chp->dev.release = chp_release;
	FUNC10(&chp->lock);

	/* Obtain channel path description and fill it in. */
	ret = FUNC3(chp);
	if (ret)
		goto out_free;
	if ((chp->desc.flags & 0x80) == 0) {
		ret = -ENODEV;
		goto out_free;
	}
	/* Get channel-measurement characteristics. */
	if (css_chsc_characteristics.scmc && css_chsc_characteristics.secm) {
		ret = FUNC4(chp);
		if (ret)
			goto out_free;
	} else {
		chp->cmg = -1;
	}
	FUNC5(&chp->dev, "chp%x.%02x", chpid.cssid, chpid.id);

	/* make it known to the system */
	ret = FUNC6(&chp->dev);
	if (ret) {
		FUNC0(0, "Could not register chp%x.%02x: %d\n",
			      chpid.cssid, chpid.id, ret);
		FUNC13(&chp->dev);
		goto out;
	}
	ret = FUNC14(&chp->dev.kobj, &chp_attr_group);
	if (ret) {
		FUNC7(&chp->dev);
		goto out;
	}
	FUNC11(&channel_subsystems[chpid.cssid]->mutex);
	if (channel_subsystems[chpid.cssid]->cm_enabled) {
		ret = FUNC1(chp);
		if (ret) {
			FUNC15(&chp->dev.kobj, &chp_attr_group);
			FUNC7(&chp->dev);
			FUNC12(&channel_subsystems[chpid.cssid]->mutex);
			goto out;
		}
	}
	channel_subsystems[chpid.cssid]->chps[chpid.id] = chp;
	FUNC12(&channel_subsystems[chpid.cssid]->mutex);
	goto out;
out_free:
	FUNC8(chp);
out:
	return ret;
}