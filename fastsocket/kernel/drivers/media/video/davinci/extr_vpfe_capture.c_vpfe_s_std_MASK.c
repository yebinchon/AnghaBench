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
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; scalar_t__ started; struct vpfe_subdev_info* current_subdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC5 (struct file*) ; 
 int FUNC6 (struct vpfe_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpfe_device *vpfe_dev = FUNC5(file);
	struct vpfe_subdev_info *sdinfo;
	int ret = 0;

	FUNC2(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_std\n");

	/* Call decoder driver function to set the standard */
	ret = FUNC0(&vpfe_dev->lock);
	if (ret)
		return ret;

	sdinfo = vpfe_dev->current_subdev;
	/* If streaming is started, return device busy error */
	if (vpfe_dev->started) {
		FUNC4(&vpfe_dev->v4l2_dev, "streaming is started\n");
		ret = -EBUSY;
		goto unlock_out;
	}

	ret = FUNC3(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
					 core, s_std, *std_id);
	if (ret < 0) {
		FUNC4(&vpfe_dev->v4l2_dev, "Failed to set standard\n");
		goto unlock_out;
	}
	ret = FUNC6(vpfe_dev, std_id);

unlock_out:
	FUNC1(&vpfe_dev->lock);
	return ret;
}