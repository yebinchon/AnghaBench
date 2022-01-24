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
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int chipset; } ;
typedef  TYPE_1__ drm_mga_private_t ;
struct TYPE_4__ {int param; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ drm_mga_getparam_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
#define  MGA_PARAM_CARD_TYPE 129 
#define  MGA_PARAM_IRQ_NR 128 
 int FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_mga_private_t *dev_priv = dev->dev_private;
	drm_mga_getparam_t *param = data;
	int value;

	if (!dev_priv) {
		FUNC2("called with no initialization\n");
		return -EINVAL;
	}

	FUNC1("pid=%d\n", DRM_CURRENTPID);

	switch (param->param) {
	case MGA_PARAM_IRQ_NR:
		value = FUNC3(dev);
		break;
	case MGA_PARAM_CARD_TYPE:
		value = dev_priv->chipset;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC0(param->value, &value, sizeof(int))) {
		FUNC2("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}