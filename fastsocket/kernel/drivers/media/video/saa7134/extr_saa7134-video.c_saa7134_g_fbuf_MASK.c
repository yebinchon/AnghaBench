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
struct v4l2_framebuffer {int /*<<< orphan*/  capability; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {struct v4l2_framebuffer ovbuf; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FBUF_CAP_LIST_CLIPPING ; 

__attribute__((used)) static int FUNC0(struct file *file, void *f,
				struct v4l2_framebuffer *fb)
{
	struct saa7134_fh *fh = f;
	struct saa7134_dev *dev = fh->dev;

	*fb = dev->ovbuf;
	fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;

	return 0;
}