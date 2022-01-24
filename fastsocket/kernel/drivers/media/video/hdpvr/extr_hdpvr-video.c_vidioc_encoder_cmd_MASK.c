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
struct v4l2_encoder_cmd {int cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  raw; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  v4l2_dev; } ;
struct file {struct hdpvr_fh* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int /*<<< orphan*/  hdpvr_debug ; 
 int FUNC0 (struct hdpvr_device*) ; 
 int FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC6(struct file *filp, void *priv,
			       struct v4l2_encoder_cmd *a)
{
	struct hdpvr_fh *fh = filp->private_data;
	struct hdpvr_device *dev = fh->dev;
	int res;

	FUNC3(&dev->io_mutex);

	FUNC2(&a->raw, 0, sizeof(a->raw));
	switch (a->cmd) {
	case V4L2_ENC_CMD_START:
		a->flags = 0;
		res = FUNC0(dev);
		break;
	case V4L2_ENC_CMD_STOP:
		res = FUNC1(dev);
		break;
	default:
		FUNC5(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
			 "Unsupported encoder cmd %d\n", a->cmd);
		res = -EINVAL;
	}
	FUNC4(&dev->io_mutex);
	return res;
}