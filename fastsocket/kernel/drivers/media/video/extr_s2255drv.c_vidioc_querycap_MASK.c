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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct s2255_fh {struct s2255_dev* dev; } ;
struct s2255_dev {int /*<<< orphan*/  udev; } ;
struct file {struct s2255_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  S2255_VERSION ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			   struct v4l2_capability *cap)
{
	struct s2255_fh *fh = file->private_data;
	struct s2255_dev *dev = fh->dev;
	FUNC0(cap->driver, "s2255", sizeof(cap->driver));
	FUNC0(cap->card, "s2255", sizeof(cap->card));
	FUNC1(dev->udev, cap->bus_info, sizeof(cap->bus_info));
	cap->version = S2255_VERSION;
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
	return 0;
}