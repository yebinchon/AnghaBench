#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; int /*<<< orphan*/ * private_data; } ;
struct TYPE_11__ {struct request_queue* request_queue; } ;
struct TYPE_10__ {int exclude; TYPE_5__* device; int /*<<< orphan*/  o_excl_wait; int /*<<< orphan*/  sg_tablesize; scalar_t__ sgdebug; int /*<<< orphan*/  sfds; scalar_t__ detached; } ;
typedef  int /*<<< orphan*/  Sg_fd ;
typedef  TYPE_1__ Sg_device ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int O_ACCMODE ; 
 int O_EXCL ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct inode *inode, struct file *filp)
{
	int dev = FUNC4(inode);
	int flags = filp->f_flags;
	struct request_queue *q;
	Sg_device *sdp;
	Sg_fd *sfp;
	int res;
	int retval;

	FUNC6();
	FUNC7(inode, filp);
	FUNC2(3, FUNC8("sg_open: dev=%d, flags=0x%x\n", dev, flags));
	sdp = FUNC14(dev);
	if (FUNC0(sdp)) {
		retval = FUNC1(sdp);
		sdp = NULL;
		goto sg_put;
	}

	/* This driver's module count bumped by fops_get in <linux/fs.h> */
	/* Prevent the device driver from vanishing while we sleep */
	retval = FUNC11(sdp->device);
	if (retval)
		goto sg_put;

	if (!((flags & O_NONBLOCK) ||
	      FUNC10(sdp->device))) {
		retval = -ENXIO;
		/* we are in error recovery for this device */
		goto error_out;
	}

	if (flags & O_EXCL) {
		if (O_RDONLY == (flags & O_ACCMODE)) {
			retval = -EPERM; /* Can't lock it with read only access */
			goto error_out;
		}
		if (!FUNC5(&sdp->sfds) && (flags & O_NONBLOCK)) {
			retval = -EBUSY;
			goto error_out;
		}
		res = 0;
		FUNC3(sdp->o_excl_wait,
					   ((!FUNC5(&sdp->sfds) || sdp->exclude) ? 0 : (sdp->exclude = 1)), res);
		if (res) {
			retval = res;	/* -ERESTARTSYS because signal hit process */
			goto error_out;
		}
	} else if (sdp->exclude) {	/* some other fd has an exclusive lock on dev */
		if (flags & O_NONBLOCK) {
			retval = -EBUSY;
			goto error_out;
		}
		res = 0;
		FUNC3(sdp->o_excl_wait, (!sdp->exclude),
					   res);
		if (res) {
			retval = res;	/* -ERESTARTSYS because signal hit process */
			goto error_out;
		}
	}
	if (sdp->detached) {
		retval = -ENODEV;
		goto error_out;
	}
	if (FUNC5(&sdp->sfds)) {	/* no existing opens on this device */
		sdp->sgdebug = 0;
		q = sdp->device->request_queue;
		sdp->sg_tablesize = FUNC9(q);
	}
	if ((sfp = FUNC13(sdp, dev)))
		filp->private_data = sfp;
	else {
		if (flags & O_EXCL) {
			sdp->exclude = 0;	/* undo if error */
			FUNC17(&sdp->o_excl_wait);
		}
		retval = -ENOMEM;
		goto error_out;
	}
	retval = 0;
error_out:
	if (retval)
		FUNC12(sdp->device);
sg_put:
	if (sdp)
		FUNC15(sdp);
	FUNC16();
	return retval;
}