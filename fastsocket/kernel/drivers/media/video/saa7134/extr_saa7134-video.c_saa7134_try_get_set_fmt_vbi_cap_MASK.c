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
struct TYPE_3__ {int sampling_rate; int samples_per_line; int offset; scalar_t__ flags; scalar_t__* count; scalar_t__* start; int /*<<< orphan*/  sample_format; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct saa7134_tvnorm {scalar_t__ vbi_v_start_1; scalar_t__ vbi_v_start_0; scalar_t__ vbi_v_stop_0; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {struct saa7134_tvnorm* tvnorm; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_PIX_FMT_GREY ; 

__attribute__((used)) static int FUNC0(struct file *file, void *priv,
						struct v4l2_format *f)
{
	struct saa7134_fh *fh = priv;
	struct saa7134_dev *dev = fh->dev;
	struct saa7134_tvnorm *norm = dev->tvnorm;

	f->fmt.vbi.sampling_rate = 6750000 * 4;
	f->fmt.vbi.samples_per_line = 2048 /* VBI_LINE_LENGTH */;
	f->fmt.vbi.sample_format = V4L2_PIX_FMT_GREY;
	f->fmt.vbi.offset = 64 * 4;
	f->fmt.vbi.start[0] = norm->vbi_v_start_0;
	f->fmt.vbi.count[0] = norm->vbi_v_stop_0 - norm->vbi_v_start_0 +1;
	f->fmt.vbi.start[1] = norm->vbi_v_start_1;
	f->fmt.vbi.count[1] = f->fmt.vbi.count[0];
	f->fmt.vbi.flags = 0; /* VBI_UNSYNC VBI_INTERLACED */

	return 0;
}