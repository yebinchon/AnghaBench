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
struct salinfo_data {int open; scalar_t__ state; int /*<<< orphan*/  type; int /*<<< orphan*/  log_buffer; } ;
struct proc_dir_entry {struct salinfo_data* data; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EPERM ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 scalar_t__ STATE_NO_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, struct file *file)
{
	struct proc_dir_entry *entry = FUNC0(inode);
	struct salinfo_data *data = entry->data;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC3(&data_lock);
	if (data->open) {
		FUNC4(&data_lock);
		return -EBUSY;
	}
	data->open = 1;
	FUNC4(&data_lock);

	if (data->state == STATE_NO_DATA &&
	    !(data->log_buffer = FUNC5(FUNC2(data->type)))) {
		data->open = 0;
		return -ENOMEM;
	}

	return 0;
}