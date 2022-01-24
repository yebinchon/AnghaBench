#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx8800_fh* private_data; } ;
struct TYPE_6__ {struct cx8800_fh* read_buf; } ;
struct cx8800_fh {TYPE_1__ vbiq; TYPE_1__ vidq; struct cx8800_dev* dev; } ;
struct cx8800_dev {TYPE_4__* core; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  RESOURCE_VBI ; 
 int /*<<< orphan*/  RESOURCE_VIDEO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct cx8800_fh*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC3 (struct cx8800_fh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct cx8800_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cx8800_dev*,struct cx8800_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct cx8800_fh  *fh  = file->private_data;
	struct cx8800_dev *dev = fh->dev;

	/* turn off overlay */
	if (FUNC6(fh, RESOURCE_OVERLAY)) {
		/* FIXME */
		FUNC7(dev,fh,RESOURCE_OVERLAY);
	}

	/* stop video capture */
	if (FUNC6(fh, RESOURCE_VIDEO)) {
		FUNC9(&fh->vidq);
		FUNC7(dev,fh,RESOURCE_VIDEO);
	}
	if (fh->vidq.read_buf) {
		FUNC1(&fh->vidq,fh->vidq.read_buf);
		FUNC3(fh->vidq.read_buf);
	}

	/* stop vbi capture */
	if (FUNC6(fh, RESOURCE_VBI)) {
		FUNC10(&fh->vbiq);
		FUNC7(dev,fh,RESOURCE_VBI);
	}

	FUNC8(&fh->vidq);
	FUNC8(&fh->vbiq);

	FUNC4(&dev->core->lock);
	file->private_data = NULL;
	FUNC3(fh);

	if(FUNC0(&dev->core->users))
		FUNC2(dev->core, core, s_power, 0);
	FUNC5(&dev->core->lock);

	return 0;
}