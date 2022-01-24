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
struct hid_debug_list {struct hid_debug_list* hid_debug_buf; int /*<<< orphan*/  node; } ;
struct file {struct hid_debug_list* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_debug_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct hid_debug_list *list = file->private_data;

	FUNC1(&list->node);
	FUNC0(list->hid_debug_buf);
	FUNC0(list);

	return 0;
}