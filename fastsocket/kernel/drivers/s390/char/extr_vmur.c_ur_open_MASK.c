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
typedef  int /*<<< orphan*/  u16 ;
struct urfile {int file_reclen; int /*<<< orphan*/  dev_reclen; } ;
struct urdev {scalar_t__ open_flag; scalar_t__ class; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  reclen; int /*<<< orphan*/  wait; } ;
struct inode {int dummy; } ;
struct file {unsigned short f_flags; struct urfile* private_data; TYPE_2__* f_dentry; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 scalar_t__ DEV_CLASS_UR_I ; 
 scalar_t__ DEV_CLASS_UR_O ; 
 int EACCES ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short O_ACCMODE ; 
 int O_NONBLOCK ; 
 unsigned short O_RDONLY ; 
 unsigned short O_RDWR ; 
 unsigned short O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct urdev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct urdev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urdev*) ; 
 struct urfile* FUNC9 (struct urdev*) ; 
 int /*<<< orphan*/  FUNC10 (struct urfile*) ; 
 int FUNC11 (struct urdev*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *file)
{
	u16 devno;
	struct urdev *urd;
	struct urfile *urf;
	unsigned short accmode;
	int rc;

	accmode = file->f_flags & O_ACCMODE;

	if (accmode == O_RDWR)
		return -EACCES;
	FUNC3();
	/*
	 * We treat the minor number as the devno of the ur device
	 * to find in the driver tree.
	 */
	devno = FUNC0(file->f_dentry->d_inode->i_rdev);

	urd = FUNC7(devno);
	if (!urd) {
		rc = -ENXIO;
		goto out;
	}

	FUNC4(&urd->open_lock);
	while (urd->open_flag) {
		FUNC5(&urd->open_lock);
		if (file->f_flags & O_NONBLOCK) {
			rc = -EBUSY;
			goto fail_put;
		}
		if (FUNC12(urd->wait, urd->open_flag == 0)) {
			rc = -ERESTARTSYS;
			goto fail_put;
		}
		FUNC4(&urd->open_lock);
	}
	urd->open_flag++;
	FUNC5(&urd->open_lock);

	FUNC1("ur_open\n");

	if (((accmode == O_RDONLY) && (urd->class != DEV_CLASS_UR_I)) ||
	    ((accmode == O_WRONLY) && (urd->class != DEV_CLASS_UR_O))) {
		FUNC1("ur_open: unsupported dev class (%d)\n", urd->class);
		rc = -EACCES;
		goto fail_unlock;
	}

	rc = FUNC11(urd);
	if (rc)
		goto fail_unlock;

	urf = FUNC9(urd);
	if (!urf) {
		rc = -ENOMEM;
		goto fail_unlock;
	}

	urf->dev_reclen = urd->reclen;
	rc = FUNC2(urd);
	if (rc < 0)
		goto fail_urfile_free;
	urf->file_reclen = rc;
	file->private_data = urf;
	FUNC6();
	return 0;

fail_urfile_free:
	FUNC10(urf);
fail_unlock:
	FUNC4(&urd->open_lock);
	urd->open_flag--;
	FUNC5(&urd->open_lock);
fail_put:
	FUNC8(urd);
out:
	FUNC6();
	return rc;
}