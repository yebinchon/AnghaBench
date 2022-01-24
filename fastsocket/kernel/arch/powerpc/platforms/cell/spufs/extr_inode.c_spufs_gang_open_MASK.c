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
struct vfsmount {int dummy; } ;
struct file {int /*<<< orphan*/ * f_op; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file* FUNC3 (struct dentry*,struct vfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct file*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry, struct vfsmount *mnt)
{
	int ret;
	struct file *filp;

	ret = FUNC6();
	if (ret < 0) {
		FUNC4(dentry);
		FUNC7(mnt);
		goto out;
	}

	filp = FUNC3(dentry, mnt, O_RDONLY, FUNC2());
	if (FUNC0(filp)) {
		FUNC8(ret);
		ret = FUNC1(filp);
		goto out;
	}

	filp->f_op = &simple_dir_operations;
	FUNC5(ret, filp);
out:
	return ret;
}