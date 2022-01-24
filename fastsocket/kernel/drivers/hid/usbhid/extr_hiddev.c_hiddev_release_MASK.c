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
struct inode {int dummy; } ;
struct hiddev_list {struct hiddev_list* hiddev; int /*<<< orphan*/  hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  node; } ;
struct file {struct hiddev_list* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hiddev_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode * inode, struct file * file)
{
	struct hiddev_list *list = file->private_data;
	unsigned long flags;

	FUNC2(&list->hiddev->list_lock, flags);
	FUNC1(&list->node);
	FUNC3(&list->hiddev->list_lock, flags);

	if (!--list->hiddev->open) {
		if (list->hiddev->exist) {
			FUNC4(list->hiddev->hid);
			FUNC5(list->hiddev->hid);
		} else {
			FUNC0(list->hiddev);
		}
	}

	FUNC0(list);

	return 0;
}