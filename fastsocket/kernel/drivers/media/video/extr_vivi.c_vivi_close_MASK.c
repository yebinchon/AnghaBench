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
struct vivi_fh {int /*<<< orphan*/  vb_vidq; struct vivi_dev* dev; } ;
struct vivi_dmaqueue {int dummy; } ;
struct vivi_dev {int /*<<< orphan*/  users; int /*<<< orphan*/  mutex; struct vivi_dmaqueue vidq; } ;
struct file {struct vivi_fh* private_data; } ;
struct TYPE_2__ {int minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vivi_dev*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vivi_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vivi_dmaqueue*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct vivi_fh         *fh = file->private_data;
	struct vivi_dev *dev       = fh->dev;
	struct vivi_dmaqueue *vidq = &dev->vidq;

	int minor = FUNC4(file)->minor;

	FUNC7(vidq);
	FUNC6(&fh->vb_vidq);
	FUNC5(&fh->vb_vidq);

	FUNC1(fh);

	FUNC2(&dev->mutex);
	dev->users--;
	FUNC3(&dev->mutex);

	FUNC0(dev, 1, "close called (minor=%d, users=%d)\n",
		minor, dev->users);

	return 0;
}