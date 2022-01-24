#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tape_device {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct tape_device* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct tape_device*) ; 
 int FUNC2 (struct tape_device*) ; 
 int TAPE_MINORS_PER_DEV ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct inode*,struct file*) ; 
 struct tape_device* FUNC7 (int) ; 
 int FUNC8 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct tape_device*) ; 
 scalar_t__ tapechar_major ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11 (struct inode *inode, struct file *filp)
{
	struct tape_device *device;
	int minor, rc;

	FUNC0(6, "TCHAR:open: %i:%i\n",
		FUNC3(filp->f_path.dentry->d_inode),
		FUNC4(filp->f_path.dentry->d_inode));

	if (FUNC3(filp->f_path.dentry->d_inode) != tapechar_major)
		return -ENODEV;

	FUNC5();
	minor = FUNC4(filp->f_path.dentry->d_inode);
	device = FUNC7(minor / TAPE_MINORS_PER_DEV);
	if (FUNC1(device)) {
		FUNC0(3, "TCHAR:open: tape_get_device() failed\n");
		rc = FUNC2(device);
		goto out;
	}


	rc = FUNC8(device);
	if (rc == 0) {
		filp->private_data = device;
		rc = FUNC6(inode, filp);
	}
	else
		FUNC9(device);

out:
	FUNC10();
	return rc;
}