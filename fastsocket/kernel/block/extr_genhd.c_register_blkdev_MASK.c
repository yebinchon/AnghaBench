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
struct blk_major_name {unsigned int major; struct blk_major_name* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct blk_major_name**) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  block_class_lock ; 
 int /*<<< orphan*/  FUNC1 (struct blk_major_name*) ; 
 struct blk_major_name* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct blk_major_name** major_names ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC8(unsigned int major, const char *name)
{
	struct blk_major_name **n, *p;
	int index, ret = 0;

	FUNC4(&block_class_lock);

	/* temporary */
	if (major == 0) {
		for (index = FUNC0(major_names)-1; index > 0; index--) {
			if (major_names[index] == NULL)
				break;
		}

		if (index == 0) {
			FUNC6("register_blkdev: failed to get major for %s\n",
			       name);
			ret = -EBUSY;
			goto out;
		}
		major = index;
		ret = major;
	}

	p = FUNC2(sizeof(struct blk_major_name), GFP_KERNEL);
	if (p == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	p->major = major;
	FUNC7(p->name, name, sizeof(p->name));
	p->next = NULL;
	index = FUNC3(major);

	for (n = &major_names[index]; *n; n = &(*n)->next) {
		if ((*n)->major == major)
			break;
	}
	if (!*n)
		*n = p;
	else
		ret = -EBUSY;

	if (ret < 0) {
		FUNC6("register_blkdev: cannot get major %d for %s\n",
		       major, name);
		FUNC1(p);
	}
out:
	FUNC5(&block_class_lock);
	return ret;
}