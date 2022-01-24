#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  field; } ;
struct saa7134_fh {TYPE_1__ cap; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_format *f)
{
	struct saa7134_fh *fh = priv;
	int err;

	err = FUNC1(file, priv, f);
	if (0 != err)
		return err;

	fh->fmt       = FUNC0(f->fmt.pix.pixelformat);
	fh->width     = f->fmt.pix.width;
	fh->height    = f->fmt.pix.height;
	fh->cap.field = f->fmt.pix.field;
	return 0;
}