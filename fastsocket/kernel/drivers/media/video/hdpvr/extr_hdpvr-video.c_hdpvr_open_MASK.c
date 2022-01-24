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
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  open_count; int /*<<< orphan*/  v4l2_dev; } ;
struct file {struct hdpvr_fh* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hdpvr_fh* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct hdpvr_device *dev;
	struct hdpvr_fh *fh;
	int retval = -ENOMEM;

	dev = (struct hdpvr_device *)FUNC6(FUNC5(file));
	if (!dev) {
		FUNC3("open failing with with ENODEV\n");
		retval = -ENODEV;
		goto err;
	}

	fh = FUNC0(sizeof(struct hdpvr_fh), GFP_KERNEL);
	if (!fh) {
		FUNC4(&dev->v4l2_dev, "Out of memory\n");
		goto err;
	}
	/* lock the device to allow correctly handling errors
	 * in resumption */
	FUNC1(&dev->io_mutex);
	dev->open_count++;
	FUNC2(&dev->io_mutex);

	fh->dev = dev;

	/* save our object in the file's private structure */
	file->private_data = fh;

	retval = 0;
err:
	return retval;
}