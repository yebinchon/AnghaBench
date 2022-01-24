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
struct input_handler {struct file_operations const* fops; } ;
struct inode {int dummy; } ;
typedef  struct file_operations {int (* open ) (struct inode*,struct file*) ;} const file_operations ;
struct file {struct file_operations const* f_op; } ;

/* Variables and functions */
 int ENODEV ; 
 void* FUNC0 (struct file_operations const*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_operations const*) ; 
 int FUNC2 (struct inode*) ; 
 struct input_handler** input_table ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct input_handler *handler;
	const struct file_operations *old_fops, *new_fops = NULL;
	int err;

	FUNC3();
	/* No load-on-demand here? */
	handler = input_table[FUNC2(inode) >> 5];
	if (!handler || !(new_fops = FUNC0(handler->fops))) {
		err = -ENODEV;
		goto out;
	}

	/*
	 * That's _really_ odd. Usually NULL ->open means "nothing special",
	 * not "no device". Oh, well...
	 */
	if (!new_fops->open) {
		FUNC1(new_fops);
		err = -ENODEV;
		goto out;
	}
	old_fops = file->f_op;
	file->f_op = new_fops;

	err = new_fops->open(inode, file);

	if (err) {
		FUNC1(file->f_op);
		file->f_op = FUNC0(old_fops);
	}
	FUNC1(old_fops);
out:
	FUNC5();
	return err;
}