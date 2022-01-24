#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_sliced_vbi_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ service_set; scalar_t__** service_lines; int io_size; } ;
struct TYPE_3__ {TYPE_2__ sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int wssMode; scalar_t__ wssData; int /*<<< orphan*/  arm_app; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMTYPE_ENCODER ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetWSSConfig ; 
 scalar_t__ V4L2_SLICED_WSS_625 ; 
 int FUNC1 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
					struct v4l2_format *f)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

	FUNC2(2, "VIDIOC_S_FMT\n");
	if (FUNC0(av7110->arm_app) < 0x2623)
		return -EINVAL;
	if (f->fmt.sliced.service_set != V4L2_SLICED_WSS_625 &&
	    f->fmt.sliced.service_lines[0][23] != V4L2_SLICED_WSS_625) {
		FUNC3(&f->fmt.sliced, 0, sizeof(f->fmt.sliced));
		/* WSS controlled by firmware */
		av7110->wssMode = 0;
		av7110->wssData = 0;
		return FUNC1(av7110, COMTYPE_ENCODER,
				     SetWSSConfig, 1, 0);
	} else {
		FUNC3(&f->fmt.sliced, 0, sizeof(f->fmt.sliced));
		f->fmt.sliced.service_set = V4L2_SLICED_WSS_625;
		f->fmt.sliced.service_lines[0][23] = V4L2_SLICED_WSS_625;
		f->fmt.sliced.io_size = sizeof(struct v4l2_sliced_vbi_data);
		/* WSS controlled by userspace */
		av7110->wssMode = 1;
		av7110->wssData = 0;
	}
	return 0;
}