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
struct omap_mbox {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; scalar_t__ next; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_mbox ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,struct omap_mbox*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_mbox** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mboxes_lock ; 
 int /*<<< orphan*/  omap_mbox_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct device *parent, struct omap_mbox *mbox)
{
	int ret = 0;
	struct omap_mbox **tmp;

	if (!mbox)
		return -EINVAL;
	if (mbox->next)
		return -EBUSY;

	mbox->dev = FUNC2(&omap_mbox_class,
				  parent, 0, mbox, "%s", mbox->name);
	if (FUNC0(mbox->dev))
		return FUNC1(mbox->dev);

	ret = FUNC3(mbox->dev, &dev_attr_mbox);
	if (ret)
		goto err_sysfs;

	FUNC7(&mboxes_lock);
	tmp = FUNC6(mbox->name);
	if (*tmp) {
		ret = -EBUSY;
		FUNC8(&mboxes_lock);
		goto err_find;
	}
	*tmp = mbox;
	FUNC8(&mboxes_lock);

	return 0;

err_find:
	FUNC4(mbox->dev, &dev_attr_mbox);
err_sysfs:
	FUNC5(mbox->dev);
	return ret;
}