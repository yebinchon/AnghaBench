#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx23885_fh* private_data; } ;
struct TYPE_7__ {struct cx23885_fh* read_buf; } ;
struct TYPE_6__ {scalar_t__ reading; scalar_t__ streaming; } ;
struct cx23885_fh {TYPE_3__ vidq; TYPE_1__ vbiq; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  RESOURCE_VBI ; 
 int /*<<< orphan*/  RESOURCE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct cx23885_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_fh*) ; 
 scalar_t__ FUNC2 (struct cx23885_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*,struct cx23885_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct cx23885_fh *fh = file->private_data;
	struct cx23885_dev *dev = fh->dev;

	/* turn off overlay */
	if (FUNC2(fh, RESOURCE_OVERLAY)) {
		/* FIXME */
		FUNC3(dev, fh, RESOURCE_OVERLAY);
	}

	/* stop video capture */
	if (FUNC2(fh, RESOURCE_VIDEO)) {
		FUNC5(&fh->vidq);
		FUNC3(dev, fh, RESOURCE_VIDEO);
	}
	if (fh->vidq.read_buf) {
		FUNC0(&fh->vidq, fh->vidq.read_buf);
		FUNC1(fh->vidq.read_buf);
	}

	/* stop vbi capture */
	if (FUNC2(fh, RESOURCE_VBI)) {
		if (fh->vbiq.streaming)
			FUNC7(&fh->vbiq);
		if (fh->vbiq.reading)
			FUNC6(&fh->vbiq);
		FUNC3(dev, fh, RESOURCE_VBI);
	}

	FUNC4(&fh->vidq);
	file->private_data = NULL;
	FUNC1(fh);

	/* We are not putting the tuner to sleep here on exit, because
	 * we want to use the mpeg encoder in another session to capture
	 * tuner video. Closing this will result in no video to the encoder.
	 */

	return 0;
}