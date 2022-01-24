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
struct v4l2_input {unsigned int index; int /*<<< orphan*/  std; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {TYPE_1__* vdev; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {int /*<<< orphan*/  tvnorms; } ;

/* Variables and functions */
 size_t CX231XX_VMUX_CABLE ; 
 size_t CX231XX_VMUX_TELEVISION ; 
 int EINVAL ; 
 TYPE_2__* FUNC0 (unsigned int) ; 
 unsigned int MAX_CX231XX_INPUT ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_TUNER ; 
 int /*<<< orphan*/ * iname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			     struct v4l2_input *i)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	unsigned int n;

	n = i->index;
	if (n >= MAX_CX231XX_INPUT)
		return -EINVAL;
	if (0 == FUNC0(n)->type)
		return -EINVAL;

	i->index = n;
	i->type = V4L2_INPUT_TYPE_CAMERA;

	FUNC1(i->name, iname[FUNC0(n)->type]);

	if ((CX231XX_VMUX_TELEVISION == FUNC0(n)->type) ||
	    (CX231XX_VMUX_CABLE == FUNC0(n)->type))
		i->type = V4L2_INPUT_TYPE_TUNER;

	i->std = dev->vdev->tvnorms;

	return 0;
}