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
struct inode {int dummy; } ;
struct hiddev_list {TYPE_1__* hiddev; int /*<<< orphan*/  node; int /*<<< orphan*/  thread_lock; } ;
struct hid_device {int dummy; } ;
struct file {struct hiddev_list* private_data; } ;
struct TYPE_2__ {struct hid_device* hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HIDDEV_MINORS ; 
 int HIDDEV_MINOR_BASE ; 
 TYPE_1__** hiddev_table ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct hiddev_list*) ; 
 struct hiddev_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hid_device*) ; 
 int FUNC8 (struct hid_device*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct hiddev_list *list;
	int res;

	int i = FUNC0(inode) - HIDDEV_MINOR_BASE;

	if (i >= HIDDEV_MINORS || i < 0 || !hiddev_table[i])
		return -ENODEV;

	if (!(list = FUNC2(sizeof(struct hiddev_list), GFP_KERNEL)))
		return -ENOMEM;
	FUNC4(&list->thread_lock);

	list->hiddev = hiddev_table[i];


	file->private_data = list;

	/*
	 * no need for locking because the USB major number
	 * is shared which usbcore guards against disconnect
	 */
	if (list->hiddev->exist) {
		if (!list->hiddev->open++) {
			res = FUNC8(hiddev_table[i]->hid);
			if (res < 0) {
				res = -EIO;
				goto bail;
			}
		}
	} else {
		res = -ENODEV;
		goto bail;
	}

	FUNC5(&list->hiddev->list_lock);
	FUNC3(&list->node, &hiddev_table[i]->list);
	FUNC6(&list->hiddev->list_lock);

	if (!list->hiddev->open++)
		if (list->hiddev->exist) {
			struct hid_device *hid = hiddev_table[i]->hid;
			res = FUNC7(hid);
			if (res < 0) {
				res = -EIO;
				goto bail;
			}
			FUNC8(hid);
		}

	return 0;
bail:
	file->private_data = NULL;
	FUNC1(list);
	return res;
}