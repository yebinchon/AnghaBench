#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int /*<<< orphan*/  f_mode; struct block_device* private_data; TYPE_3__ f_path; int /*<<< orphan*/  f_mapping; int /*<<< orphan*/  f_flags; int /*<<< orphan*/ * f_op; } ;
struct block_device {TYPE_5__* bd_inode; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_9__ {int inuse; struct block_device* binding; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  O_DIRECT ; 
 int FUNC0 (struct block_device*,int (*) (struct inode*,struct file*)) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int FUNC3 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_ctl_fops ; 
 TYPE_4__* raw_devices ; 
 int /*<<< orphan*/  raw_mutex ; 
 int FUNC10 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file *filp)
{
	const int minor = FUNC6(inode);
	struct block_device *bdev;
	int err;

	if (minor == 0) {	/* It is the control device */
		filp->f_op = &raw_ctl_fops;
		return 0;
	}

	FUNC7();
	FUNC8(&raw_mutex);

	/*
	 * All we need to do on open is check that the device is bound.
	 */
	bdev = raw_devices[minor].binding;
	err = -ENODEV;
	if (!bdev)
		goto out;
	FUNC5(bdev->bd_inode);
	err = FUNC3(bdev, filp->f_mode);
	if (err)
		goto out;
	err = FUNC0(bdev, raw_open);
	if (err)
		goto out1;
	err = FUNC10(bdev, FUNC2(bdev));
	if (err)
		goto out2;
	filp->f_flags |= O_DIRECT;
	filp->f_mapping = bdev->bd_inode->i_mapping;
	if (++raw_devices[minor].inuse == 1)
		filp->f_path.dentry->d_inode->i_mapping =
			bdev->bd_inode->i_mapping;
	filp->private_data = bdev;
	FUNC9(&raw_mutex);
	FUNC11();
	return 0;

out2:
	FUNC1(bdev);
out1:
	FUNC4(bdev, filp->f_mode);
out:
	FUNC9(&raw_mutex);
	FUNC11();
	return err;
}