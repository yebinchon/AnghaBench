#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t priv; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  palette; } ;
struct stk_camera {TYPE_1__ vsettings; int /*<<< orphan*/  frame_size; struct file* owner; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  m; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 scalar_t__ FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int FUNC4 (struct stk_camera*) ; 
 TYPE_4__* stk_sizes ; 
 int FUNC5 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC6(struct file *filp,
		void *priv, struct v4l2_format *fmtd)
{
	int ret;
	struct stk_camera *dev = priv;

	if (dev == NULL)
		return -ENODEV;
	if (!FUNC0(dev))
		return -ENODEV;
	if (FUNC1(dev))
		return -EBUSY;
	if (dev->owner && dev->owner != filp)
		return -EBUSY;
	ret = FUNC5(filp, priv, fmtd);
	if (ret)
		return ret;
	dev->owner = filp;

	dev->vsettings.palette = fmtd->fmt.pix.pixelformat;
	FUNC2(dev);
	dev->frame_size = fmtd->fmt.pix.sizeimage;
	dev->vsettings.mode = stk_sizes[fmtd->fmt.pix.priv].m;

	FUNC3(dev);
	return FUNC4(dev);
}