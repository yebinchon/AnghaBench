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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vpfe_subdev_info {int /*<<< orphan*/  grp_id; } ;
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; struct vpfe_subdev_info* current_subdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  querystd ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct vpfe_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpfe_device *vpfe_dev = FUNC4(file);
	struct vpfe_subdev_info *sdinfo;
	int ret = 0;

	FUNC2(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querystd\n");

	ret = FUNC0(&vpfe_dev->lock);
	sdinfo = vpfe_dev->current_subdev;
	if (ret)
		return ret;
	/* Call querystd function of decoder device */
	ret = FUNC3(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
					 video, querystd, std_id);
	FUNC1(&vpfe_dev->lock);
	return ret;
}