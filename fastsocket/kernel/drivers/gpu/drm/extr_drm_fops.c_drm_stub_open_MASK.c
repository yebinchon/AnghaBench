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
typedef  struct file_operations {int (* open ) (struct inode*,struct file*) ;} const file_operations ;
struct file {struct file_operations const* f_op; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {struct file_operations const* fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 void* FUNC2 (struct file_operations const*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_operations const*) ; 
 struct drm_minor* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,struct file*) ; 

int FUNC9(struct inode *inode, struct file *filp)
{
	struct drm_device *dev = NULL;
	struct drm_minor *minor;
	int minor_id = FUNC5(inode);
	int err = -ENODEV;
	const struct file_operations *old_fops;

	FUNC0("\n");

	FUNC6(&drm_global_mutex);
	minor = FUNC4(&drm_minors_idr, minor_id);
	if (!minor)
		goto out;

	if (!(dev = minor->dev))
		goto out;

	if (FUNC1(dev))
		goto out;

	old_fops = filp->f_op;
	filp->f_op = FUNC2(dev->driver->fops);
	if (filp->f_op == NULL) {
		filp->f_op = old_fops;
		goto out;
	}
	if (filp->f_op->open && (err = filp->f_op->open(inode, filp))) {
		FUNC3(filp->f_op);
		filp->f_op = FUNC2(old_fops);
	}
	FUNC3(old_fops);

out:
	FUNC7(&drm_global_mutex);
	return err;
}