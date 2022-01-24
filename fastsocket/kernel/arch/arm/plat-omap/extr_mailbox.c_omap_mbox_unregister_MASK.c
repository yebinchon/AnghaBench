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
struct omap_mbox {struct omap_mbox* next; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dev_attr_mbox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap_mbox* mboxes ; 
 int /*<<< orphan*/  mboxes_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct omap_mbox *mbox)
{
	struct omap_mbox **tmp;

	FUNC2(&mboxes_lock);
	tmp = &mboxes;
	while (*tmp) {
		if (mbox == *tmp) {
			*tmp = mbox->next;
			mbox->next = NULL;
			FUNC3(&mboxes_lock);
			FUNC0(mbox->dev, &dev_attr_mbox);
			FUNC1(mbox->dev);
			return 0;
		}
		tmp = &(*tmp)->next;
	}
	FUNC3(&mboxes_lock);

	return -EINVAL;
}