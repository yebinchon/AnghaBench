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
struct vpfe_fh {int /*<<< orphan*/  prio; scalar_t__ io_allowed; struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  prio; int /*<<< orphan*/  usrs; int /*<<< orphan*/  initialized; int /*<<< orphan*/  v4l2_dev; TYPE_1__* cfg; } ;
struct file {struct vpfe_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_subdevs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_PRIORITY_UNSET ; 
 int /*<<< orphan*/  debug ; 
 struct vpfe_fh* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vpfe_device* FUNC6 (struct file*) ; 
 scalar_t__ FUNC7 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct vpfe_device *vpfe_dev = FUNC6(file);
	struct vpfe_fh *fh;

	FUNC3(1, debug, &vpfe_dev->v4l2_dev, "vpfe_open\n");

	if (!vpfe_dev->cfg->num_subdevs) {
		FUNC4(&vpfe_dev->v4l2_dev, "No decoder registered\n");
		return -ENODEV;
	}

	/* Allocate memory for the file handle object */
	fh = FUNC0(sizeof(struct vpfe_fh), GFP_KERNEL);
	if (NULL == fh) {
		FUNC4(&vpfe_dev->v4l2_dev,
			"unable to allocate memory for file handle object\n");
		return -ENOMEM;
	}
	/* store pointer to fh in private_data member of file */
	file->private_data = fh;
	fh->vpfe_dev = vpfe_dev;
	FUNC1(&vpfe_dev->lock);
	/* If decoder is not initialized. initialize it */
	if (!vpfe_dev->initialized) {
		if (FUNC7(vpfe_dev)) {
			FUNC2(&vpfe_dev->lock);
			return -ENODEV;
		}
	}
	/* Increment device usrs counter */
	vpfe_dev->usrs++;
	/* Set io_allowed member to false */
	fh->io_allowed = 0;
	/* Initialize priority of this instance to default priority */
	fh->prio = V4L2_PRIORITY_UNSET;
	FUNC5(&vpfe_dev->prio, &fh->prio);
	FUNC2(&vpfe_dev->lock);
	return 0;
}