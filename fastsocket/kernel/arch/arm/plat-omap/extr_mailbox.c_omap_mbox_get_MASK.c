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
struct omap_mbox {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 struct omap_mbox* FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_mbox** FUNC1 (char const*) ; 
 int /*<<< orphan*/  mboxes_lock ; 
 int FUNC2 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct omap_mbox *FUNC5(const char *name)
{
	struct omap_mbox *mbox;
	int ret;

	FUNC3(&mboxes_lock);
	mbox = *(FUNC1(name));
	if (mbox == NULL) {
		FUNC4(&mboxes_lock);
		return FUNC0(-ENOENT);
	}

	FUNC4(&mboxes_lock);

	ret = FUNC2(mbox);
	if (ret)
		return FUNC0(-ENODEV);

	return mbox;
}