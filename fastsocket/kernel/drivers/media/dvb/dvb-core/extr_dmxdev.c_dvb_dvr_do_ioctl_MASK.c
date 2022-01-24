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
struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct dmxdev* priv; } ;
struct dmxdev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
#define  DMX_SET_BUFFER_SIZE 128 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int FUNC0 (struct dmxdev*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file,
			    unsigned int cmd, void *parg)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dmxdev *dmxdev = dvbdev->priv;
	unsigned long arg = (unsigned long)parg;
	int ret;

	if (FUNC1(&dmxdev->mutex))
		return -ERESTARTSYS;

	switch (cmd) {
	case DMX_SET_BUFFER_SIZE:
		ret = FUNC0(dmxdev, arg);
		break;

	default:
		ret = -EINVAL;
		break;
	}
	FUNC2(&dmxdev->mutex);
	return ret;
}