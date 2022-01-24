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
struct vpfe_device {size_t std_index; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_cropcap {int /*<<< orphan*/  pixelaspect; TYPE_2__ defrect; TYPE_1__ bounds; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  pixelaspect; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_cropcap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC3 (struct file*) ; 
 TYPE_3__* vpfe_standards ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			      struct v4l2_cropcap *crop)
{
	struct vpfe_device *vpfe_dev = FUNC3(file);

	FUNC2(1, debug, &vpfe_dev->v4l2_dev, "vpfe_cropcap\n");

	if (vpfe_dev->std_index > FUNC0(vpfe_standards))
		return -EINVAL;

	FUNC1(crop, 0, sizeof(struct v4l2_cropcap));
	crop->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	crop->bounds.width = crop->defrect.width =
		vpfe_standards[vpfe_dev->std_index].width;
	crop->bounds.height = crop->defrect.height =
		vpfe_standards[vpfe_dev->std_index].height;
	crop->pixelaspect = vpfe_standards[vpfe_dev->std_index].pixelaspect;
	return 0;
}