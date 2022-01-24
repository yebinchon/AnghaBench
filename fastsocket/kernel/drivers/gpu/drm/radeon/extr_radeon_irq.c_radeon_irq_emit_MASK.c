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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_4__ {int /*<<< orphan*/  irq_seq; } ;
typedef  TYPE_2__ drm_radeon_irq_emit_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*) ; 
 int RADEON_FAMILY_MASK ; 
 int FUNC3 (struct drm_device*) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	drm_radeon_irq_emit_t *emit = data;
	int result;

	if (!dev_priv) {
		FUNC1("called with no initialization\n");
		return -EINVAL;
	}

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
		return -EINVAL;

	FUNC2(dev, file_priv);

	result = FUNC3(dev);

	if (FUNC0(emit->irq_seq, &result, sizeof(int))) {
		FUNC1("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}