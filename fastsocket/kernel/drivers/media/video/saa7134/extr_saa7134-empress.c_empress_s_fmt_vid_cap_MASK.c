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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_7__ {int sizeimage; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_5__ {int nr_packets; } ;
struct saa7134_dev {TYPE_1__ ts; } ;
struct file {struct saa7134_dev* private_data; } ;

/* Variables and functions */
 int TS_PACKET_SIZE ; 
 int /*<<< orphan*/  V4L2_MBUS_FMT_FIXED ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_MPEG ; 
 int /*<<< orphan*/  s_mbus_fmt ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_mbus_framefmt*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct saa7134_dev *dev = file->private_data;
	struct v4l2_mbus_framefmt mbus_fmt;

	FUNC1(&mbus_fmt, &f->fmt.pix, V4L2_MBUS_FMT_FIXED);
	FUNC0(dev, video, s_mbus_fmt, &mbus_fmt);
	FUNC2(&f->fmt.pix, &mbus_fmt);

	f->fmt.pix.pixelformat  = V4L2_PIX_FMT_MPEG;
	f->fmt.pix.sizeimage    = TS_PACKET_SIZE * dev->ts.nr_packets;

	return 0;
}