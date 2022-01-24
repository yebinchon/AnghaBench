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
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  fmt; scalar_t__ started; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;

/* Variables and functions */
 long EBUSY ; 
 int EINVAL ; 
#define  VPFE_CMD_S_CCDC_RAW_PARAMS 128 
 TYPE_2__* ccdc_dev ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct vpfe_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC8(struct file *file, void *priv,
		int cmd, void *param)
{
	struct vpfe_device *vpfe_dev = FUNC6(file);
	int ret = 0;

	FUNC3(1, debug, &vpfe_dev->v4l2_dev, "vpfe_param_handler\n");

	if (vpfe_dev->started) {
		/* only allowed if streaming is not started */
		FUNC4(&vpfe_dev->v4l2_dev, "device already started\n");
		return -EBUSY;
	}

	ret = FUNC0(&vpfe_dev->lock);
	if (ret)
		return ret;

	switch (cmd) {
	case VPFE_CMD_S_CCDC_RAW_PARAMS:
		FUNC5(&vpfe_dev->v4l2_dev,
			  "VPFE_CMD_S_CCDC_RAW_PARAMS: experimental ioctl\n");
		ret = ccdc_dev->hw_ops.set_params(param);
		if (ret) {
			FUNC4(&vpfe_dev->v4l2_dev,
				"Error in setting parameters in CCDC\n");
			goto unlock_out;
		}
		if (FUNC7(vpfe_dev, &vpfe_dev->fmt) < 0) {
			FUNC4(&vpfe_dev->v4l2_dev,
				"Invalid image format at CCDC\n");
			goto unlock_out;
		}
		break;
	default:
		ret = -EINVAL;
	}
unlock_out:
	FUNC1(&vpfe_dev->lock);
	return ret;
}