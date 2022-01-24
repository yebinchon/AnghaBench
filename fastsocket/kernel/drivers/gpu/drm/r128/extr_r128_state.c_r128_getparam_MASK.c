#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_2__ {int param; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ drm_r128_getparam_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
#define  R128_PARAM_IRQ_NR 128 
 int FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_getparam_t *param = data;
	int value;

	FUNC0(dev_priv);

	FUNC2("pid=%d\n", DRM_CURRENTPID);

	switch (param->param) {
	case R128_PARAM_IRQ_NR:
		value = FUNC4(dev);
		break;
	default:
		return -EINVAL;
	}

	if (FUNC1(param->value, &value, sizeof(int))) {
		FUNC3("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}