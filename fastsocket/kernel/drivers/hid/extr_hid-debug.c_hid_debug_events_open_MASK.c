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
struct inode {scalar_t__ i_private; } ;
struct hid_device {int /*<<< orphan*/  debug_list; } ;
struct hid_debug_list {struct hid_device* hdev; int /*<<< orphan*/  node; int /*<<< orphan*/  read_mutex; void* hid_debug_buf; } ;
struct file {struct hid_debug_list* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_DEBUG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_debug_list*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	int err = 0;
	struct hid_debug_list *list;

	if (!(list = FUNC1(sizeof(struct hid_debug_list), GFP_KERNEL))) {
		err = -ENOMEM;
		goto out;
	}

	if (!(list->hid_debug_buf = FUNC1(sizeof(char) * HID_DEBUG_BUFSIZE, GFP_KERNEL))) {
		err = -ENOMEM;
		FUNC0(list);
		goto out;
	}
	list->hdev = (struct hid_device *) inode->i_private;
	file->private_data = list;
	FUNC3(&list->read_mutex);

	FUNC2(&list->node, &list->hdev->debug_list);

out:
	return err;
}