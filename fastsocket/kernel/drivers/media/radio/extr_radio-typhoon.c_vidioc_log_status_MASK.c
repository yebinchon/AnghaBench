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
struct v4l2_device {int dummy; } ;
struct typhoon {int curfreq; int curvol; int io; int mutefreq; scalar_t__ muted; struct v4l2_device v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANNER ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_device*,char*,...) ; 
 struct typhoon* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv)
{
	struct typhoon *dev = FUNC1(file);
	struct v4l2_device *v4l2_dev = &dev->v4l2_dev;

	FUNC0(v4l2_dev, BANNER);
#ifdef MODULE
	v4l2_info(v4l2_dev, "Load type: Driver loaded as a module\n\n");
#else
	FUNC0(v4l2_dev, "Load type: Driver compiled into kernel\n\n");
#endif
	FUNC0(v4l2_dev, "frequency = %lu kHz\n", dev->curfreq >> 4);
	FUNC0(v4l2_dev, "volume = %d\n", dev->curvol);
	FUNC0(v4l2_dev, "mute = %s\n", dev->muted ?  "on" : "off");
	FUNC0(v4l2_dev, "io = 0x%x\n", dev->io);
	FUNC0(v4l2_dev, "mute frequency = %lu kHz\n", dev->mutefreq >> 4);
	return 0;
}