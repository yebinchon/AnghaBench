#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipath_user_info {int spu_userversion; scalar_t__ spu_subport_cnt; } ;
struct ipath_portdata {int /*<<< orphan*/  port_port; struct ipath_devdata* port_dd; } ;
struct ipath_filedata {int /*<<< orphan*/  pq; int /*<<< orphan*/  subport; struct ipath_portdata* pd; } ;
struct ipath_devdata {int /*<<< orphan*/  ipath_unit; TYPE_3__* pcidev; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {struct ipath_filedata* private_data; TYPE_2__ f_path; } ;
struct TYPE_8__ {scalar_t__ i_rdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_4__* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IPATH_USER_MINOR_BASE ; 
 unsigned int IPATH_USER_SWMAJOR ; 
 unsigned int IPATH_USER_SWMINOR ; 
 int /*<<< orphan*/  VERBOSE ; 
 int FUNC0 (struct file*,struct ipath_user_info const*) ; 
 int FUNC1 (int,struct file*,struct ipath_user_info const*) ; 
 int FUNC2 (struct file*,struct ipath_user_info const*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long,int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  ipath_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *fp,
			      const struct ipath_user_info *uinfo)
{
	int ret;
	int i_minor;
	unsigned swmajor, swminor;

	/* Check to be sure we haven't already initialized this file */
	if (FUNC10(fp)) {
		ret = -EINVAL;
		goto done;
	}

	/* for now, if major version is different, bail */
	swmajor = uinfo->spu_userversion >> 16;
	if (swmajor != IPATH_USER_SWMAJOR) {
		FUNC6("User major version %d not same as driver "
			  "major %d\n", uinfo->spu_userversion >> 16,
			  IPATH_USER_SWMAJOR);
		ret = -ENODEV;
		goto done;
	}

	swminor = uinfo->spu_userversion & 0xffff;
	if (swminor != IPATH_USER_SWMINOR)
		FUNC6("User minor version %d not same as driver "
			  "minor %d\n", swminor, IPATH_USER_SWMINOR);

	FUNC8(&ipath_mutex);

	if (FUNC5(swmajor, swminor) &&
	    uinfo->spu_subport_cnt &&
	    (ret = FUNC2(fp, uinfo))) {
		if (ret > 0)
			ret = 0;
		goto done_chk_sdma;
	}

	i_minor = FUNC3(fp->f_path.dentry->d_inode) - IPATH_USER_MINOR_BASE;
	FUNC4(VERBOSE, "open on dev %lx (minor %d)\n",
		   (long)fp->f_path.dentry->d_inode->i_rdev, i_minor);

	if (i_minor)
		ret = FUNC1(i_minor - 1, fp, uinfo);
	else
		ret = FUNC0(fp, uinfo);

done_chk_sdma:
	if (!ret) {
		struct ipath_filedata *fd = fp->private_data;
		const struct ipath_portdata *pd = fd->pd;
		const struct ipath_devdata *dd = pd->port_dd;

		fd->pq = FUNC7(&dd->pcidev->dev,
						      dd->ipath_unit,
						      pd->port_port,
						      fd->subport);

		if (!fd->pq)
			ret = -ENOMEM;
	}

	FUNC9(&ipath_mutex);

done:
	return ret;
}