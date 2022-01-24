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
struct serio_raw_list {int /*<<< orphan*/  node; struct serio_raw* serio_raw; } ;
struct serio_raw {int /*<<< orphan*/  list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  serio; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_list* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct serio_raw_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct serio_raw* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serio_raw_mutex ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct serio_raw *serio_raw;
	struct serio_raw_list *list;
	int retval = 0;

	FUNC3();
	retval = FUNC4(&serio_raw_mutex);
	if (retval)
		goto out_bkl;

	if (!(serio_raw = FUNC6(FUNC0(inode)))) {
		retval = -ENODEV;
		goto out;
	}

	if (!serio_raw->serio) {
		retval = -ENODEV;
		goto out;
	}

	if (!(list = FUNC1(sizeof(struct serio_raw_list), GFP_KERNEL))) {
		retval = -ENOMEM;
		goto out;
	}

	list->serio_raw = serio_raw;
	file->private_data = list;

	serio_raw->refcnt++;
	FUNC2(&list->node, &serio_raw->list);

out:
	FUNC5(&serio_raw_mutex);
out_bkl:
	FUNC7();
	return retval;
}